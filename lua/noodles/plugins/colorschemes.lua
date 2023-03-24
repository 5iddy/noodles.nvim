return {
    {
        'navarasu/onedark.nvim',
        lazy = false,
        config=function ()
            require 'onedark'.setup {
                style = "dark",
                transparent=true
            }
            require 'onedark'.load()
        end
    },
    { "catppuccin/nvim", name = "catppuccin", lazy=false}
}
