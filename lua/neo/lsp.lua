-- lsp_zero
local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    map('n', '<leader>=', ':LspZeroFormat<CR>')
end)

-- here you can setup the language servers
local coq = require "coq"
require('mason').setup()

lspconfig.lua_ls.setup()
lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities())
lspconfig.pylsp.setup(coq.lsp_ensure_capabilities())
-- coq config

