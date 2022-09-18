require('settings.keymaps')

--Copy to clipboard
vim.opt.clipboard = 'unnamedplus'

--Completion menu
vim.o.completeopt = 'menuone,noselect'

--Set highlight on search
vim.o.hlsearch = true

--Set indentation line
vim.o.shiftwidth = 4

--Make line numbers default
vim.wo.relativenumber = true
vim.wo.number = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

--Not autocommenting new lines
vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
