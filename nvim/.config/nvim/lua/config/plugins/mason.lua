return {
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",
  {
    "williamboman/mason.nvim",
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      mason.setup()
      mason_lspconfig.setup()
    end,
  },
}
