return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	requires = { "kyazdani42/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")

		--actual display config
		startify.section.header.val = {
			[[                                         ]],
			[[  ______ ___       ____    __            ]],
			[[  \     |   \      \   \  |  |__         ]],
			[[  /     |   /___ ___\   \ |  |__|_______ ]],
			[[ /   |  |  / __ / __ \   \|  |  |       \]],
			[[/    |    /  ___\ \_\ \      |  |  | |  |]],
			[[\____|___/ \____/\___/ \_____|__|__|_|__|]],
			[[                                         ]],
		}
		startify.section.top_buttons.val = {
			startify.button("a", "Open active directory tree", ":Neotree dir=./<CR>"),
			startify.button("m", "Open personnal directory tree", ":Neotree dir=~/<CR>"),
			startify.button("i", "Open school computer science tree", ":Neotree dir=~/Desktop/scolaire/2024-2025_si3/informatique/<CR>"),
			startify.button("p", "Open personnal projects tree", ":Neotree dir=~/Desktop/programming/<CR>"),
			startify.button("c", "Open advent of code tree", ":Neotree dir=~/Desktop/programming/advent_of_code/<CR>"),
			startify.button("q", "Quit NVIM", ":qa<CR>"),
		}
		-- disable MRU
		startify.section.mru.val = { { type = "padding", val = 0 } }
		-- disable MRU cwd
		--startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
		startify.section.bottom_buttons.val = {
			startify.button("h", "Open NeoVim plugins help with controls", ":e ~/.config/nvim/controlshelp.txt<CR>"),
		}
		startify.section.footer.val = {
		}

		vim.keymap.set("n", "<C-a>", ":Alpha<CR>")

		alpha.setup(startify.config)
		alpha.setup(startify.opts)
	end,
}
