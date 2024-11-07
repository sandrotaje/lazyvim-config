return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- change a keymap
    { "<C-P>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<C-F>", "<cmd>Telescope live_grep<cr>", desc = "Find in files" },
    { "<Leader>o", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find symbols" },
  },
}
