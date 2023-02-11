return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
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
                            tb.find_files()
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
                    }
                },
                p = {
                    name = "+pick",
                    b = {
                        function ()
                            tb.buffers()
                        end,
                        "Pick Buffers"
                    }

                }
            }, { prefix = "<leader>", remap = false, silent = true }
            )
        end,
        config = true,
    }
}
