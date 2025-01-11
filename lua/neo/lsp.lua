
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

-- Language server configurations with COQ
-- Lua language server
lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
        },
    },
}))

-- Python language server
lspconfig.pylsp.setup(coq.lsp_ensure_capabilities({
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = { enabled = true },
                flake8 = { enabled = false },
            },
        },
    },
}))

