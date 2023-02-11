local opts = {noremap = true, silent = true}

-- vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, opts)
-- vim.keymap.set('n', '<leader>gs', vim.cmd.Git, opts)
vim.keymap.set('n', '<C-l>', vim.cmd.noh, opts)

-- local wk = require 'which-key'

-- wk.register(, opts)


--[[
vim.api.nvim_create_user_command('RefreshNvimConfig', function ()
    vim.cmd('source ' .. os.getenv 'HOME' .. '/.config/nvim/init.lua')
end, {
    desc = "Re-source init.lua from $HOME/.config/nvim/init.lua"
})]]

vim.cmd [[
    nnoremap <silent><C-t> :tabnew \| Alpha <CR>
]]
