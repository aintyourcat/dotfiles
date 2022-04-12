local null_ls = require('null-ls')
local builtins = null_ls.builtins
local helpers = require('null-ls.helpers')

local blade_formatter = helpers.make_builtin({
    name= 'blade-formatter',
    method = null_ls.methods.FORMATTING,
    filetypes = { 'blade' },
    generator_opts = {
        command = 'blade-formatter',
        args = { '--stdin' },
        to_stdin = true
    },
    factory = helpers.formatter_factory,
})

local sources = {
    builtins.formatting.prettier.with {
        filetypes = {
            'javascript',
            'json',
            'html',
            'css',
            'php',
            'blade'
        }
    },
    builtins.diagnostics.php,
    builtins.formatting.shfmt,
    builtins.diagnostics.shellcheck,
    blade_formatter
}

null_ls.setup {
    sources = sources
}
