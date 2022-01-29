local M = {}

M.indent_blankline = function()
    vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
    vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
end

M.nnn = function()
    local nnn = require('nnn')

    nnn.setup {
        command = 'nnn -xH',
        layout = 'vnew',
        set_default_mappings = 0,
        action = {
            ['<c-t>'] = 'tab split',
            ['<M-x>'] = 'split',
            ['<M-v>'] = 'vsplit'
        }
    }
end

return M
