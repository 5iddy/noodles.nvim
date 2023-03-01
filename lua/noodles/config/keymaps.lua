local wk = require 'which-key'

local opts = { remap = false, silent = true }
local map = vim.keymap.set

local unpack = unpack
-- vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, opts)
-- vim.keymap.set('n', '<leader>gs', vim.cmd.Git, opts)
--

map("n", "<C-l>", vim.cmd.noh, { desc = "Clear searches", unpack(opts) })
map("n", "<C-t>", "<CMD>tabnew | Alpha<CR>", { desc = "Open a new alpha tab", unpack(opts) })

map("n", "<A-Left>", "<C-w>h", { desc = "Move cursor to left window", unpack(opts) })
map("n", "<A-Right>", "<C-w>l", { desc = "Move cursor to right window", unpack(opts) })
map("n", "<A-Up>", "<C-w>k", { desc = "Move cursor to window on top", unpack(opts) })
map("n", "<A-Down>", "<C-w>j", { desc = "Move cursor to window on bottom", unpack(opts) })

-- map("n", "<>")

wk.register({
    l = {
        f = {
            "<CMD>Lspsaga lsp_finder<CR>",
            "Find References, Definition and Implementation"
        },
        d = {
            "<CMD>Lspsaga peek_definition<CR>",
            "Peek Definition in Popup"
        }
    }
}, { prefix = "<localleader>", unpack(opts) })
