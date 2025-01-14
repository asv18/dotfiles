return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local ts = require("nvim-treesitter.configs")

    ts.setup({
      auto_install = true,
      highlight = {
        enable = true,
          additional_vim_regex_highlighting=false,
        },
        indent = { enable = true }, 
        autotag = { enable = true },
        ensure_installed = {
          "json",
          "javascript",
          "typescript",
          "tsx",
          "yaml",
          "html",
          "css",
          "prisma",
          "markdown",
          "markdown_inline",
          "svelte",
          "graphql",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
          "query",
          "vimdoc",
          "c",
          "cpp",
          "python",
          "rust",
          "toml",
        },
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
    })
  end,
}
