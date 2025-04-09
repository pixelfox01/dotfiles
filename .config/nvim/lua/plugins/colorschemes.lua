return {
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    tag = "v2.0.0",
    opts = {
      theme = {
        transparent = true,
      },
    },
    config = function(_, opts)
      require("flow").setup(opts)
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  }
}
