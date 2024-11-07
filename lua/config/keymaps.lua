-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- buffers
vim.keymap.set("n", "<A-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<A-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<A-w>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })

-- LSP
vim.keymap.set("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Code action" })
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- format
vim.keymap.set("n", "gf", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

-- neo-tree
vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle reveal float<cr>", { desc = "Toggle NvimTree" })

-- Insert mode mappings for jj and kk to switch to normal mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Map 'jj' to <Esc> in insert mode" })
vim.keymap.set("i", "kk", "<Esc>", { desc = "Map 'kk' to <Esc> in insert mode" })

-- Mapping for Esc to save the file
vim.keymap.set("n", "<Esc>", ":w<CR>:noh<CR>", { desc = "Save file on Esc", silent = true })
