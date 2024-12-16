return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
            vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", { desc = "[H]unk [P]review" })
            vim.keymap.set("n", "<leader>hp", ":Gitsigns reset_hunk<CR>", { desc = "[H]unk [R]eset" })
            vim.keymap.set("n", "<leader>gb", ":Gitsigns blame<CR>", { desc = "[G]it [B]lame" })
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
        opts = {
            graph_style = "kitty",
        },
    },
}
