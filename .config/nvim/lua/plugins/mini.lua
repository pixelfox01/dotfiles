return {
  {
    'echasnovski/mini.pairs',
    version = false,
    opts = {},
  },
  {
    'echasnovski/mini.surround',
    version = false,
    opts = {},
  },
  {
    'echasnovski/mini.ai',
    version = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects"
    },
    config = function()
      local spec_treesitter = require('mini.ai').gen_spec.treesitter
      require('mini.ai').setup({
        custom_textobjects = {
          F = spec_treesitter({ a = '@function.outer', i = '@function.inner' }),
          l = spec_treesitter({ a = '@loop.outer', i = '@loop.inner' }),
          i = spec_treesitter({ a = '@conditional.outer', i = '@conditional.inner' }),
          c = spec_treesitter({ a = '@class.outer', i = '@class.inner' }),
        },
        mappings = {
          -- Disable next/last variants
          around_next = '',
          inside_next = '',
          around_last = '',
          inside_last = '',
        }
      })
    end
  },
}
