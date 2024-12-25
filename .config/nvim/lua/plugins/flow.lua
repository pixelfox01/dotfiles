return {
  "0xstepit/flow.nvim",
  lazy = false,
  priority = 1000,
  tag = "v2.0.0",
  opts = { 
	  theme = {
		  transparent= true,
	  },
  },
  config = function(_, opts)
	  require("flow").setup(opts)
	  vim.cmd.colorscheme("flow")
  end,
}
