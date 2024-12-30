return {
	"nvimdev/guard.nvim",
	dependencies = "nvimdev/guard-collection",
	event = "BufReadPre",
	config = function()
		local guard = require("guard")
		local ft = require("guard.filetype")

		ft("c,cpp,json"):fmt("clang-format")

		--[[ local augroup = vim.api.nvim_create_augroup("ClangLspFormatting", {}) ]]

		guard.setup({
			fmt_on_save = true,
			lsp_as_default_formatter = false,
		})
	end,
}
