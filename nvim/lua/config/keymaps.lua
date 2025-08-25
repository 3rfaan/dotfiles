-- Redo
vim.keymap.set("n", "U", "<C-r>", { noremap = true, desc = "Redo previous change" })

-- Focus windows
vim.keymap.set("n", "<leader>h", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>l", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader>j", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader>k", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics in a floating window" })

-- mini.files
vim.keymap.set("n", "<leader>t", function() require("mini.files").open() end, { desc = "Open MiniFiles file tree" })

-- mini.pick
vim.keymap.set('n', '<leader>ff', function() MiniPick.builtin.files() end, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', function() MiniPick.builtin.grep_live() end, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', function() MiniPick.builtin.buffers() end, { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fh', function() MiniPick.builtin.help() end, { desc = 'Find help tags' })
