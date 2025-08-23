require("core.lazy")
require("core.lsp")

require("config.options")
require("config.keymaps")

-- GLOBALS
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- Disable netrw (native VIM explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- COMMANDS
vim.cmd("colorscheme dayfox")
