return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = "make" }
  },
  config = function()
    local builtins = require('telescope.builtin')
    vim.keymap.set("n", "<leader>sf", builtins.find_files)
    vim.keymap.set("n", "<leader>sg", builtins.live_grep)
    vim.keymap.set("n", "<leader>sh", builtins.help_tags)
    vim.keymap.set("n", "<leader>sn", function()
      builtins.find_files {
        prompt_title = "Find (neovim) Files",
        cwd = vim.fn.stdpath("config")
      }
    end)

    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argv(0) == "" then
          builtins.find_files()
        end
      end,
    })
  end
}
