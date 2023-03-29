local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set
local unpack = unpack
local opts = { remap = false, silent = true }
local lspopts = require 'config.lspopts'


autocmd("BufRead", {
    group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
    pattern = "Cargo.toml",
    callback = function() require 'cmp'.setup.buffer({ sources = { { name = "crates" } } }) end
})

autocmd("FileType", {
    desc = "Markdown Keymaps",
    pattern = "markdown",
    callback = function()
        map("n", "<Leader><Leader>cc", "r <esc>", { desc = "Uncheck markdown todo", unpack(opts) })
        map("n", "<Leader><Leader>cx", "rX<esc>", { desc = "Check a Markdown todo", unpack(opts) })

        require('lspconfig').marksman.setup {
            on_attach = lspopts.on_attach,
            capabilities = lspopts.capabilities
        }
    end
})

autocmd("FileType", {
    desc = "C Keymaps",
    pattern = "c",
    callback = function ()
        require('lspconfig').clangd.setup {
            on_attach = lspopts.on_attach,
            capabilities = lspopts.capabilities
        }
    end
})


