-- require("barbar").setup({})
-- Move to previous/next 
vim.cmd("nnoremap <silent> <C-H> <Cmd>BufferPrevious<CR>")
vim.cmd("nnoremap <silent> <C-L> <Cmd>BufferNext<CR>")
-- Re-order to previous/next 
-- vim.cmd("nnoremap <silent> <A-<> <Cmd>BufferMovePrevious<CR>")
-- vim.cmd("nnoremap <silent> <A->> <Cmd>BufferMoveNext<CR>")

-- Close buffer
vim.cmd("nnoremap <silent> <A-c> <Cmd>BufferClose<CR>")
