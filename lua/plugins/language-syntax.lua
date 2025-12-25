return {
    { "vim-scripts/iptables" },
    {
        "takid1412/nvim-treesitter-nginx",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        lazy = false,
        build = ":TSUpdate nginx",
    },
}
