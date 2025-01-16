return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = '*',

    opts = {
      keymap = {
        preset = 'enter',
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      completion = {
        menu = {
          border = "rounded",
        },
        documentation = {
          window = { border = "rounded" }
        },
      },
      sources = {
        cmdline = {}
      },
      signature = {
        enabled = true,
        window = {
          border = "rounded"
        },
      },
    }
  },
}
