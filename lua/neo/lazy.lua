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
require('lazy').setup(
{	
    {
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{
	    'nvim-telescope/telescope.nvim',  branch = '0.1.x',
	    dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'L3MON4D3/LuaSnip'},
	{'mfussenegger/nvim-dap'},
	{'rcarriga/nvim-dap-ui'},
	-- Themes
	{'navarasu/onedark.nvim'},{'scottmckendry/cyberdream.nvim'},
	--
	{'theHamsta/nvim-dap-virtual-text'},
	{'nvim-neotest/nvim-nio'},
	{'ms-jpq/coq_nvim'},
    }
    )
