return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function(_, opts)
    require("oil").setup(opts)
    vim.keymap.set("n", "<C-e>", function() require("oil").toggle_float() end)
  end,
}
