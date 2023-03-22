
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} } 
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
    }

    use "rebelot/kanagawa.nvim"
    vim.cmd("colorscheme kanagawa-wave")

    -- Highlight, edit, and navigate code
    use {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
          'nvim-treesitter/nvim-treesitter-textobjects',
        },
        config = function()
          pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
    }

    use('nvim-treesitter/playground')

    -- Git 
    use('tpope/vim-fugitive')
    use('rbong/vim-flog')
    use('lewis6991/gitsigns.nvim', {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    })

    -- Handle tabstop and shiftwidth
    use('tpope/vim-sleuth')

    -- show pending keybinds
    use('folke/which-key.nvim')

    -- Add indentation guides even on blank lines
    use('lukas-reineke/indent-blankline.nvim',{
      char = '┊',
      show_trailing_blankline_indent = false,
    })
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use('wellle/context.vim')
    use{'preservim/nerdtree',
        requires = {
            {'ryanoasis/vim-devicons'},
            {'philrunninger/nerdtree-visual-selection'},
            {'xuyuanp/nerdtree-git-plugin'},
        }
    }

    -- comment out values 
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
end) 
