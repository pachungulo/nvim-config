return {
    "stevearc/oil.nvim",
    opts = {
        view_options = {
            show_hidden = true,
        },
    },
    keys = {
        --stylua: ignore
        { "-", function() require("oil").open() end, { desc = "Open directory" } },
    },
}
