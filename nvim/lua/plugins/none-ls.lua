--formatting
--working for: Lua, OCaml, C, Java, HTML, CSS
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.ocamlformat,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettierd,
			},
		})
		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
	end,
}
