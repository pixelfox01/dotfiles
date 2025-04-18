require("config.lazy")
require("vim-options")

vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":lua<CR>")

vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch)

vim.keymap.set("n", "H", "_")
vim.keymap.set("n", "L", "$")

vim.keymap.set("n", "<CR>", "o<Esc>")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

-- highlight yanked text
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=150})
  augroup END
]]
