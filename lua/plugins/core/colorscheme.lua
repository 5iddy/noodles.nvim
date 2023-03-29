return {
    {
        'navarasu/onedark.nvim',
        lazy=false,
        config=function ()
            local onedark = require 'onedark'
            local opts = {}
            opts.style = "dark"
            if vim.g.neovide then
                opts.transparent = false
            else
                opts.transparent=true
            end
            onedark.setup(opts)
            require 'onedark'.load()
        end
    }
}
