local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').pylsp.setup {capabilities = capabilities}
require('lspconfig').clangd.setup {capabilities = capabilities}

local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
local omnisharp_bin = "omnisharp"
local nvim_lsp = require 'lspconfig'

require'lspconfig'.omnisharp.setup {
  cmd = {omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)},
  root_dir = nvim_lsp.util.root_pattern("*.csproj", "*.sln", "*.cs"),
  ...
}
capabilities = capabilities
require('lspconfig').lua_ls.setup {
  capabilities = capabilities,
  settings = {Lua = {diagnostics = {globals = {'vim'}}}}
}
