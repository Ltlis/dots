return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup ({
		ensure_installed = {"python", "lua", "c", "html", "css", "norg"},
		highlight = {enable = true },
		indent = {enable = true },
	})
	end
}
