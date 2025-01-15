return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        -- dashboard = { enabled = true }, -- TODO:
        notifier = { enabled = true },
        indent = {
            animate = {
                enabled = false,
            },
        },
    },

    keys = {
        { "<leader>gB", function() Snacks.gitbrowse() end, desc = "[G]it [B]rowse", mode = { "n" } },
    },
}
