return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            on_attach = function(buffer)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, desc)
                    vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
                end

                map("n", "]h", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "]c", bang = true })
                    else
                        gs.nav_hunk("next")
                    end
                end, "Next Hunk")
                map("n", "[h", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "[c", bang = true })
                    else
                        gs.nav_hunk("prev")
                    end
                end, "Prev Hunk")
                -- stylua: ignore start
                map("n", "]H", function() gs.nav_hunk("last") end, "Last Hunk")
                map("n", "[H", function() gs.nav_hunk("first") end, "First Hunk")
                map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "[S]tage Hunk")
                map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "[R]eset Hunk")
                map("n", "<leader>ghS", gs.stage_buffer, "[S]tage Buffer")
                map("n", "<leader>ghu", gs.undo_stage_hunk, "[U]ndo Stage Hunk")
                map("n", "<leader>ghR", gs.reset_buffer, "[R]eset Buffer")
                map("n", "<leader>ghp", gs.preview_hunk_inline, "[P]review Hunk Inline")
                map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "[B]lame Line")
                map("n", "<leader>ghB", function() gs.blame() end, "[B]lame Buffer")
                map("n", "<leader>ghd", gs.diffthis, "[D]iff This")
                map("n", "<leader>ghD", function() gs.diffthis("~") end, "[D]iff This ~")
                map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "GitSigns Select Hunk") -- WTF is this
                -- stylua: ignore end
            end,
        },
    },
    -- {
    --     "NeogitOrg/neogit",
    --     dependencies = {
    --         "nvim-lua/plenary.nvim", -- required
    --         "sindrets/diffview.nvim", -- optional - Diff integration
    --         -- "nvim-telescope/telescope.nvim", -- optional
    --     },
    --     opts = {
    --         graph_style = "kitty",
    --     },
    -- },
    {
        "tpope/vim-fugitive",
    },
    {
        "sindrets/diffview.nvim",
        opts = {},
        cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    },
    {
        "rbong/vim-flog",
        lazy = true,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        },
        init = function ()
            vim.g.flog_enable_extended_chars = true
        end
    },
}
