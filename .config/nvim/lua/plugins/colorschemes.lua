return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      transparent_mode = false,
      overrides = {
        Pmenu = { link = "Normal" },
        NormalFloat = { link = "Normal" },
        FloatBorder = { link = "Normal" },
        SignColumn = { link = "Normal" },
      },
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
