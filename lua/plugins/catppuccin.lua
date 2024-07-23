return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup {
      custom_highlights = function(colors)
        return {
          AlphaHeader = { fg = colors.blue }
        }
      end
    }
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
