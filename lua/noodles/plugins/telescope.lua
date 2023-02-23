return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzy-native.nvim',
        },
        event= "VeryLazy",
        init = function ()
            local wk = require 'which-key'
            local tb = require 'telescope.builtin'
            wk.register({
                f = {
                    name = "+find",
                    f = {
                        function ()
                            tb.find_files({hidden=true})
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
            telescope.setup {}
            telescope.load_extension('fzy_native')

        end
    },
}
