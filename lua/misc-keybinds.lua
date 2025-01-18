-- navigate window panes better

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

--diagnostic stuff
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }) doesn't work, don't care about it anyway
vim.keymap.set("n", "<leader>ic", "<cmd>CmpStatus<CR>", { desc = "[C]ompletions Status" }) -- These three are from Stup
vim.keymap.set("n", "<leader>il", "<cmd>LspInfo<CR>", { desc = "[L]SP Status" })

-- Git keymaps
vim.keymap.set("n", "<leader>gs", "<cmd>Neogit<CR>", { desc = "[G]it [S]tatus" })
vim.keymap.set("n", "<leader>gb", "<cmd>BlameToggle<CR>", { desc = "[G]it [B]lame" })

-- Misc
vim.keymap.set("n", "Q", "@q")
