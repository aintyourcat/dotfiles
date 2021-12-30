local null_ls = require('null-ls')
local builtins = null_ls.builtins

local sources = {
    builtins.formatting.prettier.with {
        filetypes = {
            'javascript',
            'json',
            'html',
            'css',
            'php'
        }
    },
    builtins.diagnostics.php
}

null_ls.setup {
    sources = sources
}
