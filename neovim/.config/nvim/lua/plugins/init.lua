-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	-- NOTE: First, some plugins that don't require any configuration

	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',

	-- NOTE: This is where your plugins related to LSP can be installed.
	--  The configuration is done below. Search for lspconfig to find it below.
	{ -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ 'j-hui/fidget.nvim', opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
			'folke/neodev.nvim',
		},
	},

	{ -- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			{
				'L3MON4D3/LuaSnip',
				dependencies = {
					{
						'rafamadriz/friendly-snippets',
						config = function()
							require('luasnip.loaders.from_vscode').lazy_load()
							require('luasnip').filetype_extend("ruby", { "rails" })
						end
					}
				},
			},
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
		}
	},

	-- Useful plugin to show you pending keybinds.
	{ 'folke/which-key.nvim',          opts = {} },
	{ -- Adds git releated signs to the gutter, as well as utilities for managing changes
		'lewis6991/gitsigns.nvim',
		opts = {
			-- See `:help gitsigns.txt`
			signs = {
				add = { text = '+' },
				change = { text = '~' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
		},
	},

	{ -- Set lualine as statusline
		'nvim-lualine/lualine.nvim',
		-- See `:help lualine.txt`
		opts = {
			options = {
				icons_enabled = false,
				theme = 'auto',
				component_separators = '|',
				section_separators = '',
			},
		},
	},

	{ -- Add indentation guides even on blank lines
		'lukas-reineke/indent-blankline.nvim',
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help indent_blankline.txt`
		opts = {
			char = '┊',
			show_trailing_blankline_indent = false,
			show_current_context = true,
			show_current_context_start = true,
		},
	},

	-- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim',         opts = {} },

	-- Fuzzy Finder (files, lsp, etc)
	{ 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },

	-- Fuzzy Finder Algorithm which requires local dependencies to be built.
	-- Only load if `make` is available. Make sure you have the system
	-- requirements installed.
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		-- NOTE: If you are having trouble with this installation,
		--       refer to the README for telescope-fzf-native for more instructions.
		build = 'make',
		cond = function()
			return vim.fn.executable 'make' == 1
		end,
	},

	{ -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		config = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
	},


	{
		"jose-elias-alvarez/null-ls.nvim",
		opts = function()
			local null_ls = require("null-ls")

			return {
				debug = true,
				default_timeout = 10000,
				sources = {
					null_ls.builtins.formatting.blade_formatter,
					null_ls.builtins.formatting.prettier.with({
						filetypes = {
							'javascript',
							'json',
							'html',
							'css',
							'php',
						}
					}),
					null_ls.builtins.diagnostics.php,
					null_ls.builtins.formatting.shfmt,
					null_ls.builtins.diagnostics.shellcheck,
					null_ls.builtins.diagnostics.erb_lint,
					null_ls.builtins.formatting.erb_format,
				},
			}
		end,
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	"mattn/emmet-vim",

	{
		"savq/melange-nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme 'melange'
		end,
	},

	'mbbill/undotree',

	{
		"luukvbaal/nnn.nvim",
		opts = function()
			local nnn = require("nnn")

			return {
				explorer = {
					width = 50,
				},
				mappings = {
					{ "<C-t>", nnn.builtin.open_in_tab }, -- open file(s) in tab
					{ "<C-s>", nnn.builtin.open_in_split }, -- open file(s) in split
					{ "<C-v>", nnn.builtin.open_in_vsplit }, -- open file(s) in vertical split
					{ "<C-p>", nnn.builtin.open_in_preview }, -- open file in preview split keeping nnn focused
					{ "<C-y>", nnn.builtin.copy_to_clipboard }, -- copy file(s) to clipboard
					{ "<C-w>", nnn.builtin.cd_to_path }, -- cd to file directory
					{ "<C-e>", nnn.builtin.populate_cmdline }, -- populate cmdline (:) with file(s)
				}
			}
		end
	},

	{
		'echasnovski/mini.pairs',
		version = false,
		config = function()
			require('mini.pairs').setup()
		end,
	},

	{
		'echasnovski/mini.surround',
		version = false,
		config = function()
			require('mini.surround').setup()
		end,
	},

	{
		'NvChad/nvim-colorizer.lua',
		opts = {},
	},

	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-context',
		}
	},

	'cshuaimin/ssr.nvim',

	'RRethy/vim-illuminate',

	{
		'simrat39/symbols-outline.nvim',
		opts = {},
	},

	{
		'Wansmer/treesj',
		dependencies = { 'nvim-treesitter' },
		opts = {}
	}
}
