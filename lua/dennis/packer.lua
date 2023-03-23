
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        version = '*',
        requires = { {'nvim-lua/plenary.nvim'} },
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
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
        requires = {
          'nvim-treesitter/nvim-treesitter-textobjects',
        },
    }

    use('nvim-treesitter/playground')

    -- Git 
    use('tpope/vim-fugitive')
    use('rbong/vim-flog')
    use('lewis6991/gitsigns.nvim')


    -- Handle tabstop and shiftwidth
    use('tpope/vim-sleuth')

    -- show pending keybinds
    use('folke/which-key.nvim')

    -- Add indentation guides even on blank lines
    use('lukas-reineke/indent-blankline.nvim')
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

    -- LSP Configuration & Plugins
    use {
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    }
  }
    -- Autocompletion
    use {
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }

    use {"akinsho/toggleterm.nvim", tag = '*'}
end)

