require('base.base')
require('base.colorscheme')

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
	  "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    requires = { 
	      "nvim-lua/plenary.nvim",
	      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	      "MunifTanjim/nui.nvim",
	    }
	  }

	use 'sainnhe/edge'
	use {
		"folke/noice.nvim",
		 opts = {
		    -- add any options here
		 },
		 requires = {
		   -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		   "MunifTanjim/nui.nvim",
		   -- OPTIONAL:
		   --   `nvim-notify` is only needed, if you want to use the notification view.
		   --   If not available, we use `mini` as the fallback
		   "rcarriga/nvim-notify",
		  }
	}
    	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
    	}

    	use { -- Additional text objects via treesitter
		'nvim-treesitter/nvim-treesitter-textobjects',
		after = 'nvim-treesitter',
    	}
	use 'tpope/vim-fugitive'
    	use 'tpope/vim-rhubarb'
    	use 'lewis6991/gitsigns.nvim'
    	use 'lukas-reineke/indent-blankline.nvim'
	use 'numToStr/Comment.nvim'

	-- Fuzzy Finder (files, lsp, etc)
    	use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }
	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

		    use { -- LSP Configuration & Plugins
	        'neovim/nvim-lspconfig',
	        requires = {
	            -- Automatically install LSPs to stdpath for neovim
	            'williamboman/mason.nvim',
	            'williamboman/mason-lspconfig.nvim',

	            -- Useful status updates for LSP
	            'j-hui/fidget.nvim',

	            -- Additional lua configuration, makes nvim stuff amazing
	            'folke/neodev.nvim',
	        },
	}

    	use { -- Autocompletion
		'hrsh7th/nvim-cmp',
		requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
	}

    	use 'nvim-lualine/lualine.nvim'

end)

require('plugins.noice')
require('plugins.treesitter')
require('plugins.gitsigns')
require('plugins.indent')
require('plugins.comment')
require('plugins.telescope')
require('plugins.neotree')
require('plugins.lsp')
require('plugins.copilot')
require('plugins.lualine')
