return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local ts = require("nvim-treesitter.configs")

    ts.setup({
      ensure_installed = { "lua", "rust", "toml", "c", "vim", "markdown", "cpp" },
      auto_install = true,
      highlight = {
        enable = true,
          additional_vim_regex_highlighting=false,
        },
        ident = { enable = true }, 
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
    })
  end,
}
