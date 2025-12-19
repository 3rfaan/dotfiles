-- Syntax highlighting
return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require 'nvim-treesitter.configs'.setup({
            ensure_installed = {
                "c",
                "css",
                "fish",
                "go",
                "html",
                "javascript",
                "lua",
                "python",
                "query",
                "rust",
                "svelte",
                "typescript",
            },

            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
