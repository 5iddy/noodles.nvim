return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "glepnir/lspsaga.nvim",
            'ray-x/lsp_signature.nvim'
        }
    },
    {
        "glepnir/lspsaga.nvim",
        config = true,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "neovim/nvim-lspconfig"
        }
    }
}
