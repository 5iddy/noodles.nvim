return {
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        config = true
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
}
