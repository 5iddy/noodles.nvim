return {
    -- File Manager / Browser
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>home", "<cmd>Neotree filesystem dir=~/ toggle left<cr>", desc = "Explore Home" },
            { "<leader>pwd", "<cmd>Neotree filesystem toggle left<cr>", desc = "Explore Current Directory"},
            { "<c-n>", "<cmd>Neotree filesystem toggle left<cr>", desc = "Explore Current Directory" },
            { "<leader>aob", "<cmd>Neotree buffers dir=~/ toggle right<cr>", desc = "All Opened Buffers"},
            { "<leader>awb", "<cmd>Neotree buffers toggle right<cr>", desc = "Currently Open Buffers in Workspace"}
        },
        config = require 'noodles.config.neotree'.setup
    },
    -- Custom Status Line
    {
        'nvim-lualine/lualine.nvim',
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
            show_end_of_line = true,
            space_char_blankline = "|",
        }
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = false,
        keys = {
            { "<leader>ub", function ()
                require("barbecue.ui").toggle()
            end, desc = "Toggle Barbecue"}
        },
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        config = true
    },
    {
        "SmiteshP/nvim-navic",
        config = true
    },
}
