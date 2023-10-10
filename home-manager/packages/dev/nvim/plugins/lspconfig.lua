


local cmp = require 'cmp'

cmp.setup {
  -- As currently, i am not using any snippet manager, thus disabled it.
     -- snippet = {
        --   expand = function(args)
           --     require("luasnip").lsp_expand(args.body)
           --   end,
        -- },

    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(),
        ["<c-y>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        },
    },

    sources = {
        { name = "nvim_lsp"},
        { name = "path" },
        { name = "buffer" , keyword_length = 5},
    }

    -- experimental = {
    --     ghost_text = true
    -- }
}



-- local on_attach = function(client, bufnr)
-- -- Enable completion triggered by <c-x><c-o>
--     vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    
--     -- Mappings.
--     -- See `:help vim.lsp.*` for documentation on any of the below functions
--     local bufopts = { noremap=true, silent=true, buffer=bufnr }
--         vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
--         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
--         vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--         vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
--         vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
--         vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
--         vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
--         vim.keymap.set('n', '<space>wl', function()
--             print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--         end, bufopts)
--         vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
--         vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
--         vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
--         vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
--         vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
--     end

local lspconfig = require('lspconfig')

lspconfig.pyright.setup {}

-- require('lspconfig')['pyright'].setup{
--     -- on_attach = on_attach
-- }

-- require('lspconfig')['ccls'].setup{
--     -- on_attach = on_attach
-- }


lspconfig.ccls.setup {
  init_options = {
    cache = {
      directory = ".ccls-cache";
    };
  }
}


-- cmake -S source -B build -DEXPORT_COMPILE_COMMAND=ON puis copier le json à la racine du projet 