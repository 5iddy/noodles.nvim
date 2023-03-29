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

-- lsp saga
map("n", "<localleader>lf", "<CMD>Lspsaga lsp_finder<CR>", { desc = "Find References, Definition and Implementation", unpack(opts) })
map("n", "<localleader>ld", "<CMD>Lspsaga peek_definition<CR>", { desc = "Peek Definition in Popup", unpack(opts) })

map('n', '<leader>bb', '<CMD>BufferLinePick<CR>', { desc= "Pick Buffer Line Tab", unpack(opts)})
map('n', '<leader>bc', '<CMD>BufferLinePickClose<CR>', { desc= "Pick Buffer Line Tab Close", unpack(opts)})
