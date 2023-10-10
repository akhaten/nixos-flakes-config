-- https://github.com/nvim-telescope/telescope.nvim

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- https://github.com/jedrzejboczar/toggletasks.nvim

require('toggletasks').setup {
    debug = false,
    silent = false,  -- don't show "info" messages
    short_paths = true,  -- display relative paths when possible
    -- Paths (without extension) to task configuration files (relative to scanned directory)
    -- All supported extensions will be tested, e.g. '.toggletasks.json', '.toggletasks.yaml'
    search_paths = {
        '.',
        'toggletasks',
        '.toggletasks',
        '.nvim/toggletasks',
    },
    -- Directories to consider when searching for available tasks for current window
    scan = {
        global_cwd = true,    -- vim.fn.getcwd(-1, -1)
        tab_cwd = true,       -- vim.fn.getcwd(-1, tab)
        win_cwd = true,       -- vim.fn.getcwd(win)
        lsp_root = true,      -- root_dir for first LSP available for the buffer
        dirs = {},            -- explicit list of directories to search or function(win): dirs
        rtp = false,          -- scan directories in &runtimepath
        rtp_ftplugin = false, -- scan in &rtp by filetype, e.g. ftplugin/c/toggletasks.json
    },
    tasks = {}, -- list of global tasks or function(win): tasks
                -- this is basically the "Config format" defined using Lua tables
    -- Language server priorities when selecting lsp_root (default is 0)
    lsp_priorities = {
        ['null-ls'] = -10,
    },
    -- Defaults used when opening task's terminal (see Terminal:new() in toggleterm/terminal.lua)
    toggleterm = {
        close_on_exit = false,
        hidden = true,
    },
    -- Configuration of telescope pickers
    telescope = {
        spawn = {
            open_single = true,  -- auto-open terminal window when spawning a single task
			--show_running = false, -- include already running tasks in picker candidates
			show_running = true,
            -- Replaces default select_* actions to spawn task (and change toggleterm
            -- direction for select horiz/vert/tab)
            mappings = {
                select_float = '<C-f>',
                spawn_smart = '<C-a>',  -- all if no entries selected, else use multi-select
                spawn_all = '<M-a>',    -- all visible entries
                spawn_selected = nil,   -- entries selected via multi-select (default <tab>)
            },
        },
        -- Replaces default select_* actions to open task terminal (and change toggleterm
        -- direction for select horiz/vert/tab)
        select = {
            mappings = {
                select_float = '<C-f>',
                open_smart = '<C-a>',
                open_all = '<M-a>',
                open_selected = nil,
                kill_smart = '<C-q>',
                kill_all = '<M-q>',
                kill_selected = nil,
                respawn_smart = '<C-s>',
                respawn_all = '<M-s>',
                respawn_selected = nil,
            },
        },
    },
}

require('telescope').load_extension('toggletasks')


-- https://github.com/LinArcX/telescope-command-palette.nvim

require('telescope').setup({
    extensions = {
        command_palette = {
            {"File",
                { "entire selection (C-a)", ':call feedkeys("GVgg")' },
                { "save current file (C-s)", ':w' },
                { "save all files (C-A-s)", ':wa' },
                { "quit (C-q)", ':qa' },
                { "file browser (C-i)", ":lua require'telescope'.extensions.file_browser.file_browser()", 1 },
                { "search word (A-w)", ":lua require('telescope.builtin').live_grep()", 1 },
                { "git files (A-f)", ":lua require('telescope.builtin').git_files()", 1 },
                { "files (C-f)",     ":lua require('telescope.builtin').find_files()", 1 },
            },
            {"Help",
                { "tips", ":help tips" },
                { "cheatsheet", ":help index" },
                { "tutorial", ":help tutor" },
                { "summary", ":help summary" },
                { "quick reference", ":help quickref" },
                { "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
            },
            {'Telescope',
                { 'Tasks', ':Telescope toggletasks spawn' },
                { 'Find Text', ':Telescope current_buffer_fuzzy_find'}
            },
            {'Tree',
                { 'Open', ':NvimTreeOpen' },
                { 'Close', ':NvimTreeOpen'}
            }

            -- }
            -- {"Vim",
            --     { "reload vimrc", ":source $MYVIMRC" },
            --     { 'check health', ":checkhealth" },
            --     { "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
            --     { "commands", ":lua require('telescope.builtin').commands()" },
            --     { "command history", ":lua require('telescope.builtin').command_history()" },
            --     { "registers (A-e)", ":lua require('telescope.builtin').registers()" },
            --     { "colorshceme", ":lua require('telescope.builtin').colorscheme()", 1 },
            --     { "vim options", ":lua require('telescope.builtin').vim_options()" },
            --     { "keymaps", ":lua require('telescope.builtin').keymaps()" },
            --     { "buffers", ":Telescope buffers" },
            --     { "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
            --     { "paste mode", ':set paste!' },
            --     { 'cursor line', ':set cursorline!' },
            --     { 'cursor column', ':set cursorcolumn!' },
            --     { "spell checker", ':set spell!' },
            --     { "relative number", ':set relativenumber!' },
            --     { "search highlighting (F12)", ':set hlsearch!' },
            -- }
        }
    }
})
  
require('telescope').load_extension('command_palette')

vim.keymap.set('n', '<C-p>', ':Telescope command_palette<CR>')
-- vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', {})
-- vim.api.nvim_set_keymap('i', '<C-b>', ':NvimTreeToggle<CR>', {})

require('telescope').load_extension('file_browser')
vim.keymap.set('n', '<Leader>r', ":lua require('telescope').extensions.file_browser.file_browser()<CR>")
