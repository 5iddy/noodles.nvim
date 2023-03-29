return {
    {
        'kevinhwang91/nvim-ufo',
        dependencies = {
            'kevinhwang91/promise-async'
        },
        init = function ()
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
            provider_selector = function (filetype, buffer, buftype)
                return {'treesitter', 'indent'}
            end
        }
    },
}
