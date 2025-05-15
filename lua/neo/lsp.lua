
-- Load required modules
local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')
local coq = require('coq') -- Ensure coq is installed and required properly

-- Extend lsp-zero functionality
lsp_zero.extend_lspconfig()

-- On-attach setup
lsp_zero.on_attach(function(client, bufnr)
    -- Default lsp-zero keymaps
    lsp_zero.default_keymaps({ buffer = bufnr })
    -- Keymap for formatting
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>=', ':LspZeroFormat<CR>', { noremap = true, silent = true })
end)

-- Mason setup for managing servers
require('mason').setup()

lspconfig.lua_ls.setup()
