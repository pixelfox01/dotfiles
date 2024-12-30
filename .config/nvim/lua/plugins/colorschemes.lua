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
      vim.cmd.colorscheme("flow")
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end,
  }
}
