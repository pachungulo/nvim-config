return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        require("mini.operators").setup({ replace = { prefix = "cr" } })
        require("mini.surround").setup()
    end,
}
