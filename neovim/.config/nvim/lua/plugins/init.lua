-- Install packer
local fn = vim.fn
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

local packer = require('packer')

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-commentary'
    use 'chriskempson/base16-vim'
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require('plugins.cmp')
        end,
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        }
    }
    use {
        'mcchrish/nnn.vim',
        config = function()
            require('plugins.others').nnn()
        end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('plugins.others').indent_blankline()
        end
    }
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.lspconfig')
        end
    }
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    if packer_bootstrap then
        packer.sync()
    end
end)
