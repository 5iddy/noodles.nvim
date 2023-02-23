local wk = require 'which-key'

local opts = { noremap = true, silent = true }

-- vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, opts)
-- vim.keymap.set('n', '<leader>gs', vim.cmd.Git, opts)
wk.register({
    ["<C-l>"] = { vim.cmd.noh, "Clear Searches" },
    ["<C-t>"] = {
        "<CMD>tabnew | Alpha<CR>"
        , "Open New Tab" },
    ["<A-Left>"] = {"<C-w>h", "Move to Left Window"},
    ["<A-Right>"] = { "<C-w>l", "Move to Right Window"},
    ["<A-Up>"] = { "<C-w>k", "Move to Window Up"},
    ["<A-Down>"] = { "<C-w>j", "Move to Window Down"},
}, opts)

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
}, { prefix="<localleader>", unpack(opts)})

