-- nvim_cmp
local cmp = require('cmp')

cmp.setup({
    preselect = 'item',
    completion = {
	completeopt = 'menu,menuone,noinsert'
    },
    sources = {
	{ name = 'nvim_lsp' },
    },
    mapping = {
	['<C-u>'] = cmp.mapping.confirm({ select = false }),
	['<C-e>'] = cmp.mapping.abort(),
	['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
	['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
	['<C-p>'] = cmp.mapping(function()
	    if cmp.visible() then
		cmp.select_prev_item({ behavior = 'insert' })
	    else
		cmp.complete()
	    end
	end),
	['<C-n>'] = cmp.mapping(function()
	    if cmp.visible() then
		cmp.select_next_item({ behavior = 'insert' })
	    else
		cmp.complete()
	    end
	end),
    },
    snippet = {
	expand = function(args)
	    require('luasnip').lsp_expand(args.body)
	end,
    },
})

-- lsp_zero
local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    map('n', '<leader>=', ':LspZeroFormat<CR>')
end)

-- here you can setup the language servers
require('mason').setup()
lspconfig.clangd.setup({})
lspconfig.lua_ls.setup({})
lspconfig.omnisharp.setup({cmd = {"/home/neo/.local/share/nvim/mason/packages/omnisharp/omnisharp"}, options = {TabSize = 4, IndentationSize = 4}})

