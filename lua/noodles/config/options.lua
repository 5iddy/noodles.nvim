vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.hidden = true
vim.opt.cmdheight = 1
vim.opt.updatetime = 200

vim.opt.linebreak = true
vim.opt.showbreak = '﬌'
vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 2
vim.opt.showmode = false

vim.opt.signcolumn = 'yes:1'
vim.opt.spell = false
vim.opt.spelllang = { 'en_us' }

vim.opt.completeopt = {'menu','menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.opt.backup=true
vim.opt.backupdir = os.getenv("HOME") .. "/.vim/backup/"
vim.opt.writebackup = true

vim.opt.cursorline=true
vim.opt.showmatch = true
vim.opt.visualbell = true
vim.opt.hlsearch = true
vim.opt.smartcase = true

vim.opt.incsearch = true
vim.opt.autoindent = true
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.showtabline = 2
vim.opt.ruler = true
vim.opt.shiftwidth = 4

vim.opt.undolevels = 100000
vim.opt.backspace = "indent,eol,start"
vim.opt.encoding = "utf-8"
vim.opt.backupcopy = "yes"
vim.opt.conceallevel = 1
