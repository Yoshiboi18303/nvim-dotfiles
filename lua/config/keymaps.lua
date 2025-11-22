-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Reset the lazy keymaps as they aren't useful to me.
vim.keymap.del("n", "<leader>l", { silent = true })
vim.keymap.del("n", "<leader>L", { silent = true })
