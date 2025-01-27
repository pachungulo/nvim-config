-- return {
--     {
--         "hrsh7th/cmp-nvim-lsp",
--     },
--     {
--         "hrsh7th/cmp-path",
--     },
--     {
--         "hrsh7th/cmp-buffer",
--     },
--     {
--         "L3MON4D3/LuaSnip",
--         dependencies = {
--             "saadparwaiz1/cmp_luasnip",
--             "rafamadriz/friendly-snippets",
--         },
--     },
--     {
--         "hrsh7th/nvim-cmp",
--         config = function()
--             local cmp = require("cmp")
--             local cmp_autopairs = require('nvim-autopairs.completion.cmp')
--             require("luasnip.loaders.from_vscode").lazy_load()
--
--             cmp.setup({
--                 snippet = {
--                     expand = function(args)
--                         require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
--                     end,
--                 },
--                 window = {
--                     completion = cmp.config.window.bordered(),
--                     documentation = cmp.config.window.bordered(),
--                 },
--                 mapping = cmp.mapping.preset.insert({
--                     ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--                     ["<C-f>"] = cmp.mapping.scroll_docs(4),
--                     ["<C-Space>"] = cmp.mapping.complete(),
--                     ["<C-e>"] = cmp.mapping.abort(),
--                     ["<CR>"] = cmp.mapping.confirm({ select = false }),
--                     ["<Tab>"] = cmp.mapping.select_next_item(),
--                     ["<S-Tab>"] = cmp.mapping.select_prev_item(),
--                     ["<C-l>"] = cmp.mapping(function()
--                         if require("luasnip").expand_or_locally_jumpable() then
--                             require("luasnip").expand_or_jump()
--                         end
--                     end, { "i", "s" }),
--                     ["<C-h>"] = cmp.mapping(function()
--                         if require("luasnip").locally_jumpable(-1) then
--                             require("luasnip").jump(-1)
--                         end
--                     end, { "i", "s" }),
--                 }),
--                 sources = cmp.config.sources({
--                     { name = "nvim_lsp" },
--                     { name = "luasnip" },
--                     { name = "buffer" },
--                     { name = "path" },
--                 }),
--             })
--             cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
--
--         end,
--     },
-- }

return {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = "rafamadriz/friendly-snippets",

    -- use a release tag to download pre-built binaries
    version = "*",
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    opts = {
        -- 'default' for mappings similar to built-in completion
        -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
        -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
        -- See the full "keymap" documentation for information on defining your own keymap.
        keymap = { preset = "enter" },

        appearance = {
            -- Sets the fallback highlight groups to nvim-cmp's highlight groups
            -- Useful for when your theme doesn't support blink.cmp
            -- Will be removed in a future release
            use_nvim_cmp_as_default = true,
            -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = "normal",
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        completion = { list = { selection = { preselect = false, auto_insert = true } } },

        -- snippets = { preset = "luasnip"}
    },
    opts_extend = { "sources.default" },
}
