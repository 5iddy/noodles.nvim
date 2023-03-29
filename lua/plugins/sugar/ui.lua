return {
    {
        "lukas-reineke/indent-blankline.nvim",
        event="BufReadPost",
        opts = {
            show_current_context = true,
            show_current_context_start = true,
        }
    },
    {
        "SmiteshP/nvim-navic",
        event="BufReadPost",
        config = true
    },
}
