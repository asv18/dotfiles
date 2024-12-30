return {
	"jose-elias-alvarez/null-ls.nvim",
	config = function()
		local null = require("null-ls.nvim")
		local augroup = vim.api.nvim_create_augroup("ClangLspFormatting", {})

		null.setup({
			sources = {
				null.builtins.formatting.clang_format
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({
						buffer = bufnr,
						group = augroup,
					})
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
					-- for different styling format, run --style <style_name> --dump-config > .clang_format in mason/bin/clang-format
				end
			end,
		})
	end,
	ft = { "cpp", "c" }
}
