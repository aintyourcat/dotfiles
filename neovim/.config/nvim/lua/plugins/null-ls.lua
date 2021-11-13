local null_ls = require('null-ls')
local builtins = null_ls.builtins

null_ls.config {
    sources = {
        builtins.formatting.prettierd.with {
            filetypes = {
                'javascript',
                'json',
                'html',
                'css'
            }
        }
    }
}
