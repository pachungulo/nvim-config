return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 50
  end,
  config = function()
    local wk = require("which-key")
    wk.add({
    { "<leader>c", group = "[C]ode" },
    -- { "<leader>c_", hidden = true },
    { "<leader>d", group = "[D]ocument" },
    -- { "<leader>d_", hidden = true },
    { "<leader>i", group = "[I]nfo" },
    -- { "<leader>i_", hidden = true },
    { "<leader>r", group = "[R]ename" },
    -- { "<leader>r_", hidden = true },
    { "<leader>s", group = "[S]earch" },
    -- { "<leader>s_", hidden = true },
    { "<leader>p", group = "[P]review" },
    { "<leader>t", group = "[T]oggle" },
    })
  end,
}
