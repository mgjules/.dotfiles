-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Define options for key mappings
-- local opts = { remap = true, silent = true }

-- Key mappings for window navigation
vim.keymap.set("n", "<C-S-Left>", "<C-h>", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-S-Down>", "<C-j>", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-S-Up>", "<C-k>", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-S-Right>", "<C-l>", { desc = "Go to Right Window", remap = true })

-- Key mappings for adjusting window size
vim.keymap.set("n", "<A-S-Up>", "<C-Up>", { desc = "Increase Window Height", remap = true })
vim.keymap.set("n", "<A-S-Down>", "<C-Down>", { desc = "Decrease Window Height", remap = true })
vim.keymap.set("n", "<A-S-Left>", "<C-Left>", { desc = "Decrease Window Width", remap = true })
vim.keymap.set("n", "<A-S-Right>", "<C-Right>", { desc = "Increase Window Width", remap = true })

-- Key mappings for moving lines up and down in different modes
vim.keymap.set("n", "<A-Down>", "<A-j>", { desc = "Move Down", remap = true })
vim.keymap.set("i", "<A-Down>", "<A-j>", { desc = "Move Down", remap = true })
vim.keymap.set("v", "<A-Down>", "<A-j>", { desc = "Move Down", remap = true })
vim.keymap.set("n", "<A-Up>", "<A-k>", { desc = "Move Up", remap = true })
vim.keymap.set("i", "<A-Up>", "<A-k>", { desc = "Move Up", remap = true })
vim.keymap.set("v", "<A-Up>", "<A-k>", { desc = "Move Up", remap = true })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Buffers
vim.keymap.set("n", "<leader>ba", "<CMD>%bd<CR>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>bc", "<CMD>%bd|edit#|bd#<CR>", { desc = "Delete all buffers except current one" })

-- Windows
vim.keymap.set("n", "<leader>wc", "<CMD>on<CR>", { desc = "Delete all windows except current one" })
