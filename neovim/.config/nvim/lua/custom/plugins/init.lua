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
}
