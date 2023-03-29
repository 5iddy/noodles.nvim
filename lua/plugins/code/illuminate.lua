return {
    {
        "RRethy/vim-illuminate",
        ft = { "python", "lua", "c", "rust" },
        config = function ()
            require 'illuminate'.configure {}
        end
    }
}
