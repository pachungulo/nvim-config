return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      sh = { "shellcheck" },
    }
    vim.keymap.set("n", "<leader>cl", lint.try_lint, { desc = "[C]ode [L]int" })
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end
    })
  end,
}
