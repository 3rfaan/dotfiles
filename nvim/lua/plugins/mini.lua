-- Mini
return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
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

        require("mini.animate").setup({
            cursor = { enable = false },
            resize = { enable = false },
            open = { enable = false },
            close = { enable = false },
        })

        -- Enables icons in completion popups
        MiniIcons.tweak_lsp_kind()
    end,
}
