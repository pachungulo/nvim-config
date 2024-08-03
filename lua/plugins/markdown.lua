return {
  "MeanderingProgrammer/markdown.nvim",
  main = "render-markdown",
  name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
  cmd = { "RenderMarkdown" },
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  config = function()
    local client = require("obsidian").get_client()
    client.opts.ui.enable = false
    local namespaceID = vim.api.nvim_get_namespaces()["ObsidianUI"]
    vim.api.nvim_buf_clear_namespace(0,namespaceID,0,-1) -- Clear all the obsidian UI stuff before loading this.
    require("render-markdown").setup({})
  end
}
