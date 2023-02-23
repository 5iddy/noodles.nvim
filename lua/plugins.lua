return {
    "tpope/vim-fugitive",
    {
        'phaazon/mind.nvim',
        branch = 'v2.2',
        lazy = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = true
    },
    {
        'nvim-lualine/lualine.nvim',
        lazy = false,
        opts = require 'noodles.config.lualine'
    },
    {
        'windwp/nvim-autopairs',
        lazy = false,
        config =  true
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
        opts = {
            ignore = "^$"
        }
    },
    {
        "folke/todo-comments.nvim",
        lazy = false,
        config = true
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ":TSUpdate",
        config = function ()
            local opts = require 'noodles/config/nvim-treesitter'
            require 'nvim-treesitter.configs'.setup(opts)
        end
    },
    {
        'jghauser/follow-md-links.nvim',
        ft = "markdown"
    },
    { 'michaelb/sniprun', build = 'bash ./install.sh' },
}
