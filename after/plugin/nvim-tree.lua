-- local M = {}
-- local api = require("nvim-tree.api")
-- 
-- local function opts(desc)
--   return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
-- end
-- 
-- function M.on_attach(bufnr)
--     vim.keymap.set('n', '<C-t>', api.node.open.tab,                     opts('Open: New Tab'))
--     vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))
--     vim.keymap.set('n', 'W',     api.tree.collapse_all,                 opts('Collapse'))
--     vim.keymap.set('n', '<C-q>', api.tree.close,                        opts('Close'))
-- end
-- 
-- 
-- require("nvim-tree").setup({
-- on_attach = M.on_attach,
-- remove_keymaps = true;
-- })
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true
    }
  end

  -- default mappings
  -- api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'W', api.tree.collapse_all, opts('Collapse'))
  vim.keymap.set('n', '<C-q>', api.tree.close, opts('Close'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
  ---
  on_attach = my_on_attach
  ---
}
