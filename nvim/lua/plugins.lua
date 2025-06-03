return {
    -- Theme
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
    -- LSP
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        }
    },
    -- Syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "rust", "python" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            }
        end,
    },
    -- Formatter
    {
        "stevearc/conform.nvim",
        opts = {
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback",
            },
        },
    },
    -- Completion
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "1.*",

        ---@module "blink.cmp"
        ---@type blink.cmp.Config
        opts = {
            appearance = {
                nerd_font_variant = "mono"
            },
            signature = { enabled = true },
            keymap = {
                preset = "default",
                ['<CR>'] = { 'accept', 'fallback' },
            },
        },
        opts_extend = { "sources.default" }
    },
    -- Auto-pairs
    {
        'saghen/blink.pairs',
        version = '*',
        dependencies = 'saghen/blink.download',

        --- @module 'blink.pairs'
        --- @type blink.pairs.Config
        opts = {}
    },
    -- Keymaps
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "helix",
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
}
