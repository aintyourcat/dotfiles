local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = {
        'bash',
        'css',
        'html',
        'javascript',
        'lua',
        'php',
        'jsonc'
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
}

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr='nvim_treesitter#foldexpr()'
