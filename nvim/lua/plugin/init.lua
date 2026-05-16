-- Builtin plugins
vim.cmd("packadd nvim.undotree")
vim.cmd("packadd nvim.difftool")

-- External plugins
vim.pack.add({
  -- Nightfox colorscheme
  "https://github.com/edeneast/nightfox.nvim",

  -- LSP-Config
  "https://github.com/neovim/nvim-lspconfig",

  -- Mini
  "https://github.com/nvim-mini/mini.nvim",

  -- auto-dark-mode
  "https://github.com/f-person/auto-dark-mode.nvim",

  -- LazyDev
  "https://github.com/folke/lazydev.nvim",
})

require("mini.diff").setup({ view = { style = "sign" } })
require("mini.files").setup()
require("mini.git").setup()
require("mini.icons").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("mini.snippets").setup()
require("mini.statusline").setup()
require("mini.surround").setup()

require("lazydev").setup()
