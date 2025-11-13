-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.number = true
vim.o.relativenumber = true

vim.o.shiftwidth = 4

vim.o.signcolumn = "yes"

vim.o.cursorline = true

vim.o.undofile = true

vim.o.showmode = false

vim.o.updatetime = 250

vim.o.scrolloff = 12

vim.o.winborder = "rounded"

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

vim.g.have_nerd_font = true
