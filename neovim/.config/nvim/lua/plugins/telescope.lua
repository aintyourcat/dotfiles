return {
  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local action_layout = require("telescope.actions.layout")

      require('telescope').setup({
        defaults = {
          mappings = {
            n = {
              ['<M-p>'] = action_layout.toggle_preview
            },
            i = {
              ['<M-p>'] = action_layout.toggle_preview
            },
          }
        }
      })

      -- Enable telescope fzf native, if installed
      pcall(require('telescope').load_extension, 'fzf')
    end,
    keys = {
      {
        '<leader>?',
        function() require('telescope.builtin').oldfiles() end,
        desc = '[?] Find recently opened files'
      },

      {
        '<leader><space>',
        function() require('telescope.builtin').buffers() end,
        desc = '[ ] Find existing buffers'
      },

      {
        '<leader>sf',
        function()
          require('telescope.builtin').find_files({ hidden = true, cwd = vim.fn.expand('%:p:h') })
        end,
        desc = '[S]earch [F]iles'
      },

      {
        '<leader>gf',
        function() require('telescope.builtin').git_files() end,
        desc = '[G]it [F]iles'
      },

      {
        '<leader>sh',
        function() require('telescope.builtin').help_tags() end,
        desc = '[S]earch [H]elp'
      },

      {
        '<leader>sw',
        function() require('telescope.builtin').grep_string() end,
        desc = '[S]earch current [W]ord'
      },

      {
        '<leader>sg',
        function() require('telescope.builtin').live_grep() end,
        desc = '[S]earch by [G]rep (cwd)'
      },

      {
        '<leader>sG',
        function()
          local git_root = vim.fn.systemlist('git rev-parse --show-toplevel')

          if vim.v.shell_error == 0 then
            local opts = {
              cwd = git_root[1],
              additional_args = { '-.' }
            }
            require("telescope.builtin").live_grep(opts)
          else
            print 'Not a git repository.'
          end
        end,
        desc = '[S]earch by [G]rep (git root)'
      },

      {
        '<leader>sd',
        function() require('telescope.builtin').diagnostics() end,
        desc = '[S]earch [D]iagnostics'
      },

      { '<leader>sR', '<cmd>Telescope resume<cr>', desc = '[S]earch [R]esume' }
    },
  },

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
}
