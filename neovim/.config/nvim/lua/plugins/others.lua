local M = {}

M.indent_blankline = function()
    vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
    vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
end

M.nnn = function()
    vim.g['nnn#layout'] = 'vnew'
    vim.g['nnn#set_default_mappings'] = 0
    vim.g['nnn#action'] = { 
        ['<c-t>'] = 'tab split', 
        ['<c-x>'] = 'split', 
        ['<c-v>'] = 'vsplit' 
    }
end

return M
