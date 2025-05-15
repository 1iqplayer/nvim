local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable release
	lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({	
	{'L3MON4D3/LuaSnip'},
	{'nvim-neotest/nvim-nio'},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	-- Telescope
	{'nvim-telescope/telescope.nvim',  branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' }},
	-- Mason
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	-- Lsp
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	-- Dap
	{'mfussenegger/nvim-dap'},
	{'rcarriga/nvim-dap-ui'},
	{'theHamsta/nvim-dap-virtual-text'},
	-- Themes
	{'navarasu/onedark.nvim'},
	{'scottmckendry/cyberdream.nvim'},
    }
    )
