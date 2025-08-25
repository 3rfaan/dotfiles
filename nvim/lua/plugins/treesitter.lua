-- Syntax highlighting
return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require 'nvim-treesitter.configs'.setup({
            ensure_installed = {
                "c",
                "go",
                "html",
                "javascript",
                "lua",
                "python",
                "query",
                "rust"
            },

            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
