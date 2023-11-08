-- require('catppuccin').setup {
--    flavour = "mocha",
--    transparent_background = true
-- }
-- require('gruvbox').setup({
--   transparent_mode = true,
-- })
require('ayu').setup({
  overrides = {
    Normal = {bg = "None"},
    ColorColumn = {bg = "None"},
    SignColumn = {bg = "None"},
    Folded = {bg = "None"},
    FoldColumn = {bg = "None"},
    CursorLine = {bg = "None"},
    CursorColumn = {bg = "None"},
    WhichKeyFloat = {bg = "None"},
    VertSplit = {bg = "None"}
  }
})

require('ayu').colorscheme()
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

-- vim.cmd("colorscheme duskfox")

