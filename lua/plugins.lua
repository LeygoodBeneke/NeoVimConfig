local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use "windwp/nvim-autopairs"
    use 'lewis6991/gitsigns.nvim'
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

    use {"ellisonleao/gruvbox.nvim"}
    use {"catppuccin/nvim", as = "catppuccin"}
    use 'navarasu/onedark.nvim'
    use "EdenEast/nightfox.nvim" -- Packer
    use 'Shatur/neovim-ayu'
    use 'shaunsingh/solarized.nvim'
    use 'projekt0n/github-nvim-theme'

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true}
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = {"markdown"} end,
        ft = {"markdown"}
    })

end)

require("toggleterm").setup({open_mapping = [[<c-\>]], direction = 'float'})

require("nvim-lsp-installer").setup {}
local lspconfig = require("lspconfig")

local function on_attach(client, bufnr)
    -- set up buffer keymaps, etc.
end

lspconfig.lua_ls.setup { 
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  }
}
lspconfig.ts_ls.setup { on_attach = on_attach }
