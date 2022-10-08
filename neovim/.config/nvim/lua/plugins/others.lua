local M = {}

M.indent_blankline = function()
    require("indent_blankline").setup {
        space_char_blankline = ' ',
        show_current_context = true,
        show_current_context_start = true,
        filetype_exclude = { 'help', 'packer' },
        buftype_exclude = { 'terminal', 'nofile' }
    }
end

M.nnn = function()
    local nnn = require('nnn')

    nnn.setup {
        command = 'nnn -GH',
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
