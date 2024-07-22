return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>ph", ":Gitsigns preview_hunk<CR>", { desc = "[P]review [H]unk" })
      vim.keymap.set("n", "[c", ":Gitsigns prev_hunk<CR>", { desc = "Previous Hunk" })
      vim.keymap.set("n", "]c", ":Gitsigns next_hunk<CR>", { desc = "Next Hunk" })
    end,
  },
  {
    "tpope/vim-fugitive",
    vim.keymap.set("n", "<leader>gs", ":Git<CR>", { desc = "[G]it [S]tatus" }),
    vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "[G]it [B]lame" }),
    vim.keymap.set("n", "<leader>gg", ":Git ", { desc = "[G]it _______" }),
  },
}
