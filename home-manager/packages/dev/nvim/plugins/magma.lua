-- nnoremap <silent><expr> <LocalLeader>r  :MagmaEvaluateOperator<CR>
-- nnoremap <silent>       <LocalLeader>rr :MagmaEvaluateLine<CR>
-- xnoremap <silent>       <LocalLeader>r  :<C-u>MagmaEvaluateVisual<CR>
-- nnoremap <silent>       <LocalLeader>rc :MagmaReevaluateCell<CR>
-- nnoremap <silent>       <LocalLeader>rd :MagmaDelete<CR>
-- nnoremap <silent>       <LocalLeader>ro :MagmaShowOutput<CR>

-- let g:magma_automatically_open_output = v:false
-- require('magma-nvim').setup()
vim.cmd("nnoremap <silent><expr> <LocalLeader>r  :MagmaEvaluateOperator<CR>")
vim.cmd("nnoremap <silent>       <LocalLeader>rr :MagmaEvaluateLine<CR>")
vim.cmd("xnoremap <silent>       <LocalLeader>r  :<C-u>MagmaEvaluateVisual<CR>")
vim.cmd("nnoremap <silent>       <LocalLeader>rc :MagmaReevaluateCell<CR>")
vim.cmd("nnoremap <silent>       <LocalLeader>rd :MagmaDelete<CR>")
vim.cmd("nnoremap <silent>       <LocalLeader>ro :MagmaShowOutput<CR>")


-- vim.g.magma_automatically_open_output = v:false
-- vim.g.magma_image_provider = "ueberzug"

--function MagmaInitPython()
--    vim.cmd[[
--    :MagmaInit python3
--    :MagmaEvaluateArgument a=5
--    ]]
--end

--function MagmaInitCSharp()
--    vim.cmd[[
--    :MagmaInit .net-csharp
--    :MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof(System.Object),"text/plain");
--    ]]
--end

--function MagmaInitFSharp()
--    vim.cmd[[
--    :MagmaInit .net-fsharp
--    :MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof<System.Object>,"text/plain")
--    ]]
--end

--vim.cmd[[
--:command MagmaInitPython lua MagmaInitPython()
--:command MagmaInitCSharp lua MagmaInitCSharp()
--:command MagmaInitFSharp lua MagmaInitFSharp()
--]]
