return {
    {
        'jghauser/follow-md-links.nvim',
        ft = "markdown",
        init = function()
            vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })
        end
    },
    {
        'toppair/peek.nvim',
        ft = "markdown",
        build = 'deno task --quiet build:fast',
        cmd = {'PeekClose', 'PeekOpen'},
        config = function ()
            local peek = require 'peek'
            local create_cmd = vim.api.nvim_create_user_command
            peek.setup {
                app = 'firefox'
            }
            create_cmd('PeekOpen', peek.open, { desc='Markdown preview open' })
            create_cmd('PeekClose', peek.close, { desc = 'Markdown preview close' })
        end
    }
}
