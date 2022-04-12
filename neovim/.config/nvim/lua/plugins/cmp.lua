local cmp = require('cmp')

vim.opt.completeopt = 'menu,menuone,noselect'

cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn['vsnip#anonymous'](args.body)
        end
    },
    mapping = {
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
        ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-e>'] = cmp.mapping(cmp.mapping.abort(), { 'i', 'c' }),
        ['<CR>'] = cmp.mapping(
            cmp.mapping.confirm({ select = false }),
            { 'i', 'c' }
        )
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'buffer' },
        { name = 'path' },
        {
            name = "dictionary",
            keyword_length = 2
        }
    }
}

cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    sources = {
        { name = 'path' },
        { name = 'cmdline' }
    }
})
