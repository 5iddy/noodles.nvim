return {
    {
        'navarasu/onedark.nvim',
        lazy = false,
        config=function ()
            require 'onedark'.setup {}
            require 'onedark'.load()
        end
    }
}
