-- Mason setup for managing servers
require('mason').setup()

-- Config Lsp
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_dir = vim.fs.dirname(vim.fs.find({ '.luarc.json', '.git' }, { upward = true })[1]),
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
-- Enable lsp servers
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
