return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make'
            },
            'nvim-telescope/telescope-github.nvim',
            'crispgm/telescope-heading.nvim',
            "tsakirist/telescope-lazy.nvim",
            'jvgrootveld/telescope-zoxide',
            'kdheepak/lazygit.nvim'
        },
        cmd = "Telescope",
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", desc="Find Files" },
            { "<leader>flg", "<cmd>Telescope live_grep<cr>", desc="Live Grep" },
            { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc="Grep for word under cursor", mode = { "n", "v" } },
            { "<leader>fgf", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Most Recent Files" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Current Open Buffers" },
            { "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Show Available Commands" },

        },
        config = function ()
            local telescope = require 'telescope'
            telescope.setup {
                extensions = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                    heading = {
                        treesitter = true
                    }
                }
            }
            telescope.load_extension("fzf")
            telescope.load_extension("gh")
            telescope.load_extension("heading")
            telescope.load_extension("lazy")
            telescope.load_extension("zoxide")
            telescope.load_extension("lazygit")
        end
    },
}
