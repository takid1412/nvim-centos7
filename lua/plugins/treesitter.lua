return {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
        opts.ensure_installed = { "lua", "c", "python", "bash", "json" }
    end,
}
