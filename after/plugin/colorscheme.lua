-- require('catppuccin').setup {
--    flavour = "mocha",
--    transparent_background = true
-- }
-- require('gruvbox').setup({
--   transparent_mode = true,
-- })
-- require('ayu').setup({
--   overrides = {
--     Normal = {bg = "None"},
--     ColorColumn = {bg = "None"},
--     SignColumn = {bg = "None"},
--     Folded = {bg = "None"},
--     FoldColumn = {bg = "None"},
--     CursorLine = {bg = "None"},
--     CursorColumn = {bg = "None"},
--     WhichKeyFloat = {bg = "None"},
--     VertSplit = {bg = "None"}
--   }
-- })
-- 
-- require('ayu').colorscheme()
-- require('onedark').load()

-- require('nightfox').setup({
--   options = {
--     styles = {
--       comments = "italic",
--       keywords = "bold",
--       types = "italic,bold",
--     }
--   }
-- })

require('github-theme').setup({
    options = {
        compile_path = vim.fn.stdpath('cache') .. '/github-theme',
        compile_file_suffix = '_compiled', -- Compiled file suffix
        transparent = true,
    },
})

vim.cmd("colorscheme github_dark")

