return {
    -- File Manager / Browser
    {
        "nvim-neo-tree/neo-tree.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>eh", "<cmd>Neotree filesystem dir=~/ toggle left<cr>", desc = "Explore Home" },
            { "<leader>ec", "<cmd>Neotree filesystem toggle left<cr>", desc = "Explore Current Directory"},
            { "<c-n>", "<cmd>Neotree filesystem toggle left<cr>", desc = "Explore Current Directory" },
            { "<leader>ebh", "<cmd>Neotree buffers dir=~/ toggle right<cr>", desc = "All Opened Buffers"},
            { "<leader>ebc", "<cmd>Neotree buffers toggle right<cr>", desc = "Currently Open Buffers in Workspace"}
        },
        config = require 'noodles.config.neotree'.setup
    },
    -- Custom Status Line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'arkav/lualine-lsp-progress'
        },
        lazy = false,
        opts = require 'noodles.config.lualine'
    },
    -- {{{
    {
        "folke/which-key.nvim",
        lazy = false,
        config = true
    }, -- }}}
    {
        "lukas-reineke/indent-blankline.nvim",
        lazy=false,
        opts = {
            show_current_context = true,
            show_current_context_start = true,
        }
    },
    {
        "SmiteshP/nvim-navic",
        lazy=false,
        config = true
    },
    {
        "akinsho/bufferline.nvim",
        lazy= false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            {
                "tiagovla/scope.nvim",
                config = true
            }
        },
        opts = require 'noodles.config.bufferline'
    }
}
