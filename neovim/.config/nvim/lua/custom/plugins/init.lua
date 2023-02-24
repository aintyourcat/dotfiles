-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
