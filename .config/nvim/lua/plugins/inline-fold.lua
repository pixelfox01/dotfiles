return {
  "malbertzard/inline-fold.nvim",

  opts = {
    defaultPlaceholder = "…",
    queries = {
      -- Some examples you can use
      html = {
        { pattern = 'class="([^"]*)"', placeholder = "@" }, -- classes in html
        { pattern = 'href="(.-)"' }, -- hrefs in html
        { pattern = 'src="(.-)"' }, -- HTML img src attribute
      },
      jsx = {
        { pattern = 'className="(.-)"' },
      },
      tsx = {
        { pattern = 'className="(.-)"' },
      },
    },
  },

  config = function()
    require("inline-fold").setup({
      defaultPlaceholder = "…",
      queries = {
        -- Some examples you can use
        html = {
          { pattern = 'class="([^"]*)"', placeholder = "@" }, -- classes in html
          { pattern = 'href="(.-)"' }, -- hrefs in html
          { pattern = 'src="(.-)"' }, -- HTML img src attribute
        },
        javascriptreact = {
          { pattern = 'className="(.-)"' },
        },
      },
    })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
      pattern = { "*.html", "*.tsx", "*.jsx" },
      callback = function(_)
        if not require("inline-fold.module").isHidden then
          vim.cmd("InlineFoldToggle")
        end
      end,
    })
  end,
}
