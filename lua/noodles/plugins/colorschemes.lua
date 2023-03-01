return {
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        config = function ()
            require 'nightfox'.setup {}
            -- vim.cmd[[colorscheme nordfox]]
        end
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        config = function()
            require 'tokyonight'.setup {}
            vim.cmd[[colorscheme tokyonight-storm]]
        end
    },
    {
        'navarasu/onedark.nvim',
        lazy = false,
        config=true
    },
    {
        '5iddy/neon-nights',
        lazy = false
    }
}
