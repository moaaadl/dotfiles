-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Silent buffer switching without echoing commands
local keymap = vim.keymap.set

keymap("n", "<Tab>", function()
  vim.cmd.bnext()
end, { desc = "Next buffer" })
keymap("n", "<S-Tab>", function()
  vim.cmd.bprevious()
end, { desc = "Previous buffer" })
keymap("n", "<leader>bd", function()
  vim.cmd.bdelete()
end, { desc = "Close buffer" })
