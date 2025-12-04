local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<leader><leader>x", "<cmd>source %<CR>")
map("n", "<leader>x", ":.lua<CR>")
map("v", "<leader>x", ":lua<CR>")

map("n", "<Esc>", vim.cmd.nohlsearch)

map("n", "H", "_")
map("n", "L", "$")

map("n", "<CR>", "o<Esc>")

map("n", "<leader>e", vim.diagnostic.open_float)

-- Splits navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- Quickfix
map("n", "<M-j>", "<cmd>cnext<CR>")
map("n", "<M-k>", "<cmd>cprev<CR>")
