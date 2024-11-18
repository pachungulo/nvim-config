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
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim", -- required
            "sindrets/diffview.nvim", -- optional - Diff integration
            "nvim-telescope/telescope.nvim", -- optional
        },
        opts = {},
    },
}
