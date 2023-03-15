local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return end

vim.cmd[[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use "windwp/nvim-autopairs"
    use 'lewis6991/gitsigns.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use "williamboman/nvim-lsp-installer"
    use 'neovim/nvim-lspconfig'
    use "williamboman/mason.nvim"
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-treesitter/nvim-treesitter'
    use 'feline-nvim/feline.nvim'
    use "akinsho/toggleterm.nvim"
end)

require("toggleterm").setup({
  open_mapping = [[<c-\>]],
  direction = 'float',
})
