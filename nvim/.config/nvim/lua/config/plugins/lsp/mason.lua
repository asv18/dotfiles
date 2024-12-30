return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
			ensure_installed = {
				"lua-language-server",
				"clangd",
				"rust-analyzer",
				"clang-format",
				"codelldb",
			}
    })

    mason_lspconfig.setup()

    mason_tool_installer.setup({
      ensure_installed = {
      	"prettierd",
				"eslint_d",
				"stylua",
      },
    })
  end,
}
