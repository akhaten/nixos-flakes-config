vim.g.mapleader = ','

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.cursorline = true

-- vim.keymap.set('n', '<Leader>w', 'q<CR>')

-- vim.cmd(":set number")
-- vim.cmd(":set tabstop=4")
-- vim.cmd(":set shiftwidth=4")


-- vim.cmd("noremap <Leader>q :q<CR>")

-- Use ctrl-[hjkl] to select the active split!
vim.cmd("nmap <silent> <c-k> :wincmd k<CR>")
vim.cmd("nmap <silent> <c-j> :wincmd j<CR>")
vim.cmd("nmap <silent> <c-h> :wincmd h<CR>")
vim.cmd("nmap <silent> <c-l> :wincmd l<CR>")


