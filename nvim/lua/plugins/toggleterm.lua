return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			vim.keymap.set("n", "<C-d>", ":ToggleTerm<CR>"),
		})
	end,
}
