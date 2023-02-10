return {
    {
        'williamboman/mason.nvim',
        cmd="Mason",
        keys={
            {"<leader>mlsp", "<cmd>Mason<cr>", desc="Open Mason Package Manager"}
        },
        config = true
    },
    {
        'williamboman/mason-lspconfig.nvim',
    }
}
