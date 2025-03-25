require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup {
  ensure_installed = {
    'lua_ls',
    'ts_ls',
    'html',
    'cssls',
    'volar',
    'eslint',
    'jsonls',
    -- 'sqlls',
    'rust_analyzer',
    'clangd',
  }
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require('lspconfig').ts_ls.setup {
  settings = {
    javascript = {
      preferences = {
        lib = {"dom"}
      }
    },
    typescript = {
    }
  }
}

require('lspconfig').rust_analyzer.setup {
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {

    }
  }
}

require('lspconfig').cssls.setup {
  capabilities = capabilities,
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = 'ignore',
      },
    },
    less = { validate = true },
    scss = { validate = true },
  }
}

require('lspconfig').clangd.setup {
  capabilities = capabilities,
}
