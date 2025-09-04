-- Terminal
vim.opt.termguicolors = true
vim.opt.encoding = "UTF-8"
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousescroll = "ver:1"

-- Lines
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.list = true

-- Cursor
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.scrolloff = 10

-- Tab
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true

-- Command
vim.opt.showcmd = true

-- History
vim.opt.history = 1000

-- Completion
vim.opt.wildmenu = true
vim.opt.wildmode = "list:full"
vim.opt.wildoptions = "pum"
vim.opt.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"
vim.opt.pumheight = 20

-- Default border style of floating windows
vim.opt.winborder = "single"

-- Split panes
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Undo persistence
vim.opt.undofile = true

-- Backup
vim.opt.backup = false
vim.opt.writebackup = false

-- Column
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"

-- Colorscheme
vim.opt.background = "light"
