-- Install packer
local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    local url = 'https://github.com/wbthomason/packer.nvim'
    PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', url, install_path })
end

local packer = require('packer')

return packer.startup(function(use)
    use 'wbthomason/packer.nvim' -- Package manager
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'bluz71/vim-nightfly-guicolors'
    use 'bluz71/vim-moonfly-statusline'
    use 'rafamadriz/friendly-snippets'
    use 'flniu/er.vim'
    use 'cocopon/iceberg.vim'
    use 'jwalton512/vim-blade'
    use {
        'norcalli/nvim-colorizer.lua',
        config = function ()
            require('colorizer').setup()
        end
    }
    use {
        'uga-rosa/cmp-dictionary',
        config = function ()
            require('plugins.others').cmp_dictionary()
        end
    }
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
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
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
        config = function ()
            require('plugins.null-ls')
        end,
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('plugins.treesitter')
        end
    }
    use 'nvim-treesitter/playground'
    use 'mbbill/undotree'
    if PACKER_BOOTSTRAP then
        packer.sync()
    end
end)
