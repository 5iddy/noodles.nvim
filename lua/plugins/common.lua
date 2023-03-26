return {
    "nvim-tree/nvim-web-devicons",
    {
        'stevearc/dressing.nvim',
        event = "VeryLazy",
        config = true
    },
    {
        "nvim-lua/plenary.nvim",
        event = "VeryLazy"
    },
    {
        'karb94/neoscroll.nvim',
        event = "VeryLazy",
        cond = function ()
            if vim.g.neovide then return false else return true end
        end,
        config = true
    },
}
