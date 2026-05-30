-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit terminal insert mode with Escape (mirrors normal mode behavior)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
