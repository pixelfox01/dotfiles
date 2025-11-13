vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch)

vim.keymap.set("n", "H", "_")
vim.keymap.set("n", "L", "$")

vim.keymap.set("n", "<CR>", "o<Esc>")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
