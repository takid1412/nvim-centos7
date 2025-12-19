return {
    { "vim-scripts/iptables" },
    {
        "chr4/nginx.vim",
        config = function()
            vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
                pattern = "/etc/nginx/**/*.lua",
                callback = function()
                    vim.bo.filetype = "lua"
                end,
            })
        end,
    },
}
