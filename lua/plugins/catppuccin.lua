return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  opts = {
    custom_highlights = function(colors)
      return {
        AlphaHeader = { fg = colors.blue }
      }
    end,
  },
  config = function()
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
