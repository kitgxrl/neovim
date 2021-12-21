require 'core.packer_init'

return require('packer').startup(function()
	-- Let packer manage itself

	use 'wbthomason/packer.nvim'

	-- Theme

	use {
		'folke/tokyonight.nvim',
		config = function()
			vim.cmd [[ colo tokyonight ]]
		end,
	}

	-- Better Syntax Highlighting

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = [[ require 'modules.treesitter' ]]
	}

	-- Statusline

	use {
		'nvim-lualine/lualine.nvim',
		config = [[ require 'modules.statusline' ]]
	}

	-- NVimTree

	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		setup = function()
			vim.g.nvim_tree_show_icons = {
				git = 1,
				folders = 0,
				files = 0,
				folder_arrows = 0,
			}
		end,
		config = function() require'nvim-tree'.setup {} end
	}

	-- Bufferline

	use {
		'akinsho/bufferline.nvim',
		config = [[ require 'modules.bufferline' ]]
	}

	-- Keybind helper

	use 'LionC/nest.nvim'

	-- Tracker
	
	use {
		'SmiteshP/nvim-gps',
		requires = 'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-gps').setup()
		end
	}

	-- LSP

	use {
		'neovim/nvim-lspconfig',
		config = [[ require 'modules.lsp' ]]
	}

	-- Auto Completion

	use {
		'hrsh7th/nvim-cmp',
		requires = { 
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		},
		config = [[ require 'modules.cmp' ]]
	}

	-- Formatter

	use 'sbdchd/neoformat'

	-- Auto pairs

	use {
		'windwp/nvim-autopairs',
		config = [[ require('nvim-autopairs').setup({ map_cr = true, check_ts = true }) ]]
	}

	-- Git Diff

	use {
		'lewis6991/gitsigns.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	-- Telescope ~ Fuzzy Finder

	use { 'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Better vim movement

	use 'ggandor/lightspeed.nvim'

	use {
		'blackCauldron7/surround.nvim',
		config = function()
			require('surround').setup {mappings_style = 'surround'}
		end
	}

	use 'andymass/vim-matchup'

	-- Trouble

	use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup {}
		end
	}

	-- Zen editing

	use {
		'folke/zen-mode.nvim',
		requires = 'folke/twilight.nvim',
		config = function()
			require('twilight').setup {}
			require('zen-mode').setup {
				window = {
					options = {
						number = false,
						relativenumber = false
					}
				}	
			}
		end
	}

	-- Color helper
	use 'rktjmp/lush.nvim'

	-- Misc visuals

	use {
		'norcalli/nvim-colorizer.lua',
		config = [[ require('colorizer').setup() ]]
	}
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('indent_blankline').setup {
				buftype_exclude = {'terminal'}
			}
		end
	}

	use {
		'folke/todo-comments.nvim',
		config = function()
			require('todo-comments').setup {}
		end
	}

	-- Lang support
	
	use {
		'alaviss/nim.nvim',
		config = function()
			-- Bc this stupid ass plugin enables folds by default...
			vim.o.foldenable = false
		end
	}
end)
