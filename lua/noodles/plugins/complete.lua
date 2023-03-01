return{
    {
        'hrsh7th/nvim-cmp',
        version=false,
        event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'octaltree/cmp-look',
            'hrsh7th/cmp-calc',
            'f3fora/cmp-spell',
            {
                'uga-rosa/cmp-dictionary',
                opts = {
                    dic = { ["*"] = "/home/noodles/dictionaries/en_us.dict" }
                }
            },
            'chrisgrieser/cmp-nerdfont',
            'hrsh7th/cmp-emoji',
            {'onsails/lspkind.nvim', lazy = false },
            {
                'tamago324/cmp-zsh',
                opts = { zshrc = true, filetypes = { "zsh" } }
            },
        },
        opts = function ()
            local options = require 'noodles.config.autocomplete'
            return options
        end
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
            end,
        },
        opts = {
            history = true,
            delete_check_events = "TextChanged",
        },
        -- stylua: ignore
        keys = {
            {
                "<tab>",
                function()
                    return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
                end,
                expr = true, silent = true, mode = "i",
            },
            { "<tab>", function() require("luasnip").jump(1) end, mode = "s" },
            { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
        },
    },
}
