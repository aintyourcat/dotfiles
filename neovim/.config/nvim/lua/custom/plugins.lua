return function(use)
  use({
    "jose-elias-alvarez/null-ls.nvim", config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
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
      })
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })

  use "mattn/emmet-vim"

  use({
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
    end
  })
end
