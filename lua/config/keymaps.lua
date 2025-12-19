-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<C-a>", "ggVG", { desc = "Select All" })
keymap.set("v", "<C-c>", '"+y', { noremap = true })
keymap.set("n", "<leader>fo", "<cmd>ReindentFile<CR>", { noremap = true, desc = "ReIndent File" })
