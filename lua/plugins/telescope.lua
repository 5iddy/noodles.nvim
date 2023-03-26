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
            'jvgrootveld/telescope-zoxide'
        },
        event= "VeryLazy",
        init = function ()
            local wk = require 'which-key'
            local tb = require 'telescope.builtin'
            local telescope = require 'telescope'
            wk.register({
                f = {
                    name = "+find",
                    f = {
                        function ()
                            tb.find_files { hidden=true }
                        end,
                        "Find Files"
                    },
                    l = {
                        function ()
                            tb.live_grep()
                        end,
                        "Live Grep"
                    },
                    s = {
                        function ()
                            tb.grep_string()
                        end,
                        "Grep For String Under Cursor"
                    },
                    g = {
                        function ()
                            tb.git_files()
                        end,
                        "Find Git Files"
                    },
                    r = {
                        tb.oldfiles,
                        "Find Old Files"
                    }
                },
                p = {
                    name = "+pick",
                    b = {
                        tb.buffers,
                        "Pick Buffers"
                    },
                    c = {
                        tb.commands,
                        "Pick Commands"
                    }
                }
            }, { prefix = "<leader>", remap = false, silent = true }
            )
        end,
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
        end
    },
}
