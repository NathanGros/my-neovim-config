--LSPs
--working for: Lua, C, OCaml, Bash, Java, HTML, CSS
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "ocamllsp", "bashls", "ast_grep" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.ocamllsp.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
				filetypes = { "sh", "zsh" },
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<C-e>", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<C-g>", vim.diagnostic.goto_next)
		end,
	},
}
