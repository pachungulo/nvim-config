local lsp_formatting = function()
  vim.lsp.buf.format({
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
      local null_ls_sources = require("null-ls.sources")
      local null_ls_formatting_sources = null_ls_sources.get_available(vim.bo.filetype, "NULL_LS_FORMATTING")
      local null_ls_formatting_available = #null_ls_formatting_sources ~= 0
      if null_ls_formatting_available then
        return client.name == "null-ls"
      else
        return true
      end
    end,
  })
end
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
      },
    })

    vim.keymap.set("n", "<leader>cf", lsp_formatting, { desc = "[C]ode [F]ormat" })
  end,
}
