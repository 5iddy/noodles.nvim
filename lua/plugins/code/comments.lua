return {
    {
        'numToStr/Comment.nvim',
        event = "BufReadPost",
        opts = {
            ignore = "^$"
        }
    },
    {
        "folke/todo-comments.nvim",
        event= "VeryLazy",
        config = true
    },
}
