-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		"pmizio/typescript-tools.nvim",
		requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	}
	use({
		"L3MON4D3/LuaSnip",
		tag = "v2.*",
		run = "make install_jsregexp"
	})
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use "lukas-reineke/indent-blankline.nvim"
	use 'mbbill/undotree'
	use 'prichrd/netrw.nvim'
	use {
		'VonHeikemen/fine-cmdline.nvim',
		requires = {
			{ 'MunifTanjim/nui.nvim' }
		}
	}
	use 'nvim-tree/nvim-web-devicons'
	use 'm4xshen/autoclose.nvim'
	use 'windwp/nvim-ts-autotag'
	use('neovim/nvim-lspconfig')
	use('jose-elias-alvarez/null-ls.nvim')
	use('MunifTanjim/prettier.nvim')
	use { "akinsho/toggleterm.nvim", tag = '*' }
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use { "catppuccin/nvim", as = "catppuccin", config = function()
		vim.cmd("colorscheme catppuccin")
	end }
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use {
		"m4xshen/hardtime.nvim",
		requires = { { "MunifTanjim/nui.nvim" }, { "nvim-lua/plenary.nvim" } },
	}
	use { "folke/trouble.nvim" }
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
end)
