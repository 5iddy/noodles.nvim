-- TODO: May be replace bufferline with tabby?
local opts = {
    options = {
        mode = "buffers",
        numbers =  "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        offsets = {
            {
                filetype = "neo-tree",
                text = function ()
                    local cwd = vim.fn.getcwd()
                    local title = string.gsub(cwd, "/home/%w+/", "~/", 1)
                    return title
                end,
                text_align = "center",
                separator = true
            }
        },
        always_show_bufferline = true,
        separator_style = 'thin',
    }
}


return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            {
                "tiagovla/scope.nvim",
                config = true
            }
        },
        opts = opts
    }
}
