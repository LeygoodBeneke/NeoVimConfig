local keymap = vim.keymap

keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set('n', '<Tab>', ':tabnext<CR>', { silent=true })

--Explorer
--
-- C-t - open in new tab
-- tab - open in this tab
-- d - delete file
keymap.set('n', '<C-e>', ':NvimTreeToggle<CR>', { silent=true })

