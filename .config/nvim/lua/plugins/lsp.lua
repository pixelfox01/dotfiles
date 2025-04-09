return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup(
        {
          ui = {
            border = 'rounded'
          }
        }
      )
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },

    config = function()
      vim.diagnostic.config {
        virtual_text = false,
        float = {
          border = "rounded",
        }
      }

      local handlers = {
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
      }

      local capabilities = require("blink.cmp").get_lsp_capabilities()

      -- set up LSPs here
      require('lspconfig').lua_ls.setup { handlers = handlers, capabilities = capabilities }
      require('lspconfig').pyright.setup { handlers = handlers, capabilities = capabilities }
      require('lspconfig').gopls.setup { handlers = handlers, capabilities = capabilities }
      require('lspconfig').sqls.setup { handlers = handlers, capabilities = capabilities }

      -- Format on save
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end
            })
          end
        end
      })
    end,
  }
}
