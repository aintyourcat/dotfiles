local nvim_lsp = require('lspconfig')

-- Map several keys after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
    local opts = { noremap=true, silent=true }

    vim.api.nvim_buf_set_var(bufnr, 'root_dir', vim.lsp.get_active_clients()[1].config.root_dir)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "v", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = {
    'bashls',
    'cssls',
    'html',
    -- 'phpactor',
    'intelephense',
    'tsserver',
    -- 'tailwindcss'
}

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

local sumneko_root_path = os.getenv('HOME') .. '/src/lua-language-server'

nvim_lsp['sumneko_lua'].setup {
    cmd = {
        sumneko_root_path .. '/bin/Linux/lua-language-server',
        '-E',
        sumneko_root_path .. '/main.lua'
    },
    settings = {
        Lua = {
            completion = {
                enable = true,
            },
            runtime = {
                version = 'LuaJIT',
                path = (function()
                    local runtime_path = vim.split(package.path, ';')
                    table.insert(runtime_path, 'lua/?.lua')
                    table.insert(runtime_path, 'lua/?/init.lua')
                    return runtime_path
                end)()
            },
            diagnostics = {
                enable = true,
                globals = {
                    'vim'
                }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true)
            },
            telemetry = {
                enable = false,
            }
        }
    },
    on_attach = on_attach,
}
