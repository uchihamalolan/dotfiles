-- This file can be loaded by calling `lua require('packer')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- All-in-one Plugin for setting up LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use 'nvim-tree/nvim-web-devicons'
    use 'folke/tokyonight.nvim'
    use 'ellisonleao/gruvbox.nvim'

    use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

    use 'folke/which-key.nvim'
    use 'folke/zen-mode.nvim'
    use 'folke/twilight.nvim'
    use { 'folke/trouble.nvim', requires = 'nvim-tree/nvim-web-devicons' }

    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

    use 'lukas-reineke/indent-blankline.nvim'
    use 'akinsho/toggleterm.nvim'
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }

    use 'lewis6991/gitsigns.nvim'
end)
