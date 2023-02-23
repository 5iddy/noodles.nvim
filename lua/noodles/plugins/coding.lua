return {
    {
        'kevinhwang91/nvim-ufo',
        dependencies = {'kevinhwang91/promise-async'},
        init = function ()
            vim.opt.foldcolumn = '0'
            vim.opt.foldlevel = 99
            vim.opt.foldlevelstart = 99
            vim.opt.foldenable = true
        end,
        keys = {
            {
                'zR',
                function ()
                    require('ufo').openAllFolds()
                end
            }
        },
        opts = {
            ---@diagnostic disable-next-line: unused-local
            provider_selector = function (filetype, buffer, buftype)
                return {'treesitter', 'indent'}
            end
        }
    },
    {
        'windwp/nvim-autopairs',
        lazy = false,
        config =  true
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
        opts = {
            ignore = "^$"
        }
    },
    {
        "folke/todo-comments.nvim",
        lazy = false,
        config = true
    },
}
