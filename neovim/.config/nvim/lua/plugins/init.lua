-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- NOTE: First, some plugins that don't require any configuration

  {
    'mbbill/undotree',
    keys = {
      { '<leader>u', vim.cmd.UndotreeToggle, desc = '[U]ndotree toggle' }
    }
  },

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
    end,
    keys = {
      { '<leader>ne', '<Cmd>NnnExplorer %:p:h<CR>', desc = '[N]nn[E]xplorer (cwd)' },
      { '<leader>nE', '<Cmd>NnnExplorer<CR>',       desc = '[N]nn[E]xplorer (root)' },
    }
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
}
