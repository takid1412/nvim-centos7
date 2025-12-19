return {
    {
        "xiantang/darcula-dark.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme darcula-dark]])
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "darcula-dark",
        },
    },
    {
        "nvim-mini/mini.animate",
        event = "VeryLazy",
        opts = function(_, opts)
            opts.scroll = {
                enable = false,
            }
        end,
    },
}
