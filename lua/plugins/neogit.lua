return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "sindrets/diffview.nvim", -- optional - Diff integration
    },
    config = function()
        vim.keymap.set(
            { "n", "v" },
            "<leader>gg",
            "<cmd>Neogit<CR>",
            { noremap = true, silent = true, desc = "Open Neogit" }
        )
    end,
}
