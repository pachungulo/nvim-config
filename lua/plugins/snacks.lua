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
        picker = {},
    },

    keys = {
        -- gitbrowse
        { "<leader>gB", function() Snacks.gitbrowse() end, desc = "[G]it [B]rowse", mode = { "n" } },

        -- picker
        { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>sg", function() Snacks.picker.grep() end, desc = "[G]rep" },
        { "<leader>s:", function() Snacks.picker.command_history() end, desc = "Cmd(:) History" },
        { "<leader>sf", function() Snacks.picker.files() end, desc = "[F]iles" },
        { "<C-p>", function() Snacks.picker.smart() end, desc = "Smart open" },
        -- find
        { "<leader>s.", function() Snacks.picker.recent() end, desc = "Recent(.)" },
        -- git
        -- { "<leader>gc", function() Snacks.picker.git_log() end, desc = "Git Log" },
        -- { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
        -- Grep
        -- { "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
        -- { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
        { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
        -- search
        { '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers(\")" },
        { "<leader>sa", function() Snacks.picker.autocmds() end, desc = "[A]utocmds" },
        { "<leader>sc", function() Snacks.picker.command_history() end, desc = "[C]ommand History" },
        { "<leader>sC", function() Snacks.picker.commands() end, desc = "[C]ommands" },
        { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "[D]iagnostics" },
        { "<leader>sh", function() Snacks.picker.help() end, desc = "[H]elp Pages" },
        { "<leader>sH", function() Snacks.picker.highlights() end, desc = "[H]ighlights" },
        { "<leader>sj", function() Snacks.picker.jumps() end, desc = "[J]umps" },
        { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "[K]eymaps" },
        { "<leader>sl", function() Snacks.picker.loclist() end, desc = "[L]ocation List" },
        { "<leader>sM", function() Snacks.picker.man() end, desc = "[M]an Pages" },
        { "<leader>sm", function() Snacks.picker.marks() end, desc = "[M]arks" },
        { "<leader>sR", function() Snacks.picker.resume() end, desc = "[R]esume" },
        { "<leader>sq", function() Snacks.picker.qflist() end, desc = "[Q]uickfix List" },
        -- { "<leader>uC", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
        -- { "<leader>qp", function() Snacks.picker.projects() end, desc = "Projects" },
        -- LSP
        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "[G]oto [D]efinition" },
        { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "[G]oto [R]eferences" },
        { "gI", function() Snacks.picker.lsp_implementations() end, desc = "[G]oto [I]mplementation" },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "[G]oto T[y]pe Definition" },
        { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP [S]ymbols" },
    },
}
