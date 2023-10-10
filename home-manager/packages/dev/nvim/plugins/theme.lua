-- Example config in Lua
-- require("github-theme").setup({
--    theme_style = "dark"
    -- dark_sidebar = true,
    -- function_style = "italic",
    -- sidebars = {"qf", "vista_kind", "terminal", "packer"},
  
    -- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    -- colors = {hint = "orange", error = "#ff0000"},
  
    -- Overwrite the highlight groups
    -- overrides = function(c)
    --   vim.api.nvim_create_autocmd("FileType", { pattern = { "c" }, command = "highlight TSField guifg=".. c.green })
    --   return {}
    --   -- return {
    --   --   htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
    --   --   DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
    --   --   -- this will remove the highlight groups
    --   --   TSField = {},
    --   -- }
    -- end
--})

-- require("github-theme").setup({})
require("dracula").setup({})
vim.cmd('colorscheme dracula')
