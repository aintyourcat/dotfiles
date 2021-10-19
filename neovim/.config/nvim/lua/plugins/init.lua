-- Install packer
local fn = vim.fn
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-commentary'
    use 'chriskempson/base16-vim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require('plugins.cmp')
        end
    }
    use {
        'mcchrish/nnn.vim',
        config = function()
            require('plugins.others').nnn()
        end
    }
    use { 
        'neovim/nvim-lspconfig',
        config = function() 
            require 'plugins.lspconfig' 
        end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('plugins.others').indent_blankline()
        end
    }
end)
