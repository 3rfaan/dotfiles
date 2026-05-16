-- Terminal
vim.opt.termguicolors = true
vim.opt.encoding = "UTF-8"
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Cursor
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- Text
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.wrap = false

-- Column
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"

-- Tab
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Search
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.smartcase = true


-- Indentation
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.smartindent = true

-- Autocomplete
vim.opt.autocomplete = true
vim.opt.complete:append("o") -- append omnifunc
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Pum
vim.opt.pumblend = 15
vim.opt.pumheight = 10

-- History
vim.opt.history = 1000

-- Undo persistence
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"
vim.opt.undofile = true

-- Backup
vim.opt.backup = false
vim.opt.writebackup = false

-- Swap
vim.opt.swapfile = false
