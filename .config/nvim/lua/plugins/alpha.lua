return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}
		dashboard.section.buttons.val = {
			dashboard.button("e", "󰈔  New file", "<cmd>ene <CR>"),
			dashboard.button("f", "  Find file", "<cmd>Telescope find_files <CR>"),
			dashboard.button("w", "󰈬  Find word", "<cmd>Telescope live_grep <CR>"),
			dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles <CR>"),
			dashboard.button("c", "  Neovim config", "<cmd>cd ~/.config/nvim | Neotree toggle <CR>"),
			dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
		}
		vim.keymap.set('n', '<leader>cc', ':cd ~/.config | Neotree reveal filesystem left<CR>', {})

		alpha.setup(dashboard.opts)
	end,
}
