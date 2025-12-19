-- iptables syntax
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*/iptables/*", "**iptables", "*/ip6tables/*", "*ip6tables*" },
    callback = function()
        vim.bo.filetype = "iptables"
    end,
})

-- UI padding fix
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
    callback = function()
        local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
        if normal.bg then
            io.write(string.format("\027]11;#%06x\027\\", normal.bg))
        end
    end,
})

vim.api.nvim_create_autocmd("UILeave", {
    callback = function()
        io.write("\027]111\027\\")
    end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        io.write("\027]111\027\\")
    end,
})

-- Reindent file
vim.api.nvim_create_user_command("ReindentFile", function()
    local pos = vim.api.nvim_win_get_cursor(0) -- save cursor
    vim.cmd("normal! gg=G") -- reindent
    vim.api.nvim_win_set_cursor(0, pos) -- restore cursor
end, { desc = "Reindent whole file" })
