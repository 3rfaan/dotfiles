-- Mini
return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        require("mini.animate").setup()
        require("mini.completion").setup()
        require("mini.diff").setup()
        require("mini.files").setup()
        require("mini.git").setup()
        require("mini.icons").setup()
        require("mini.jump").setup()
        require("mini.pairs").setup()
        require("mini.pairs").setup()
        require("mini.pick").setup()
        require("mini.snippets").setup()
        require("mini.statusline").setup()
        require("mini.surround").setup()
        require("mini.tabline").setup()

        require("mini.move").setup({
            mappings = {
                left = '<C-h>',
                right = '<C-l>',
                down = '<C-j>',
                up = '<C-k>',

                line_left = '<C-h>',
                line_right = '<C-l>',
                line_down = '<C-j>',
                line_up = '<C-k>'
            }
        })
        -- Enables icons in completion popups
        MiniIcons.tweak_lsp_kind()
    end,
}
