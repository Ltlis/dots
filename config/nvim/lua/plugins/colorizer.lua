return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup()
		DEFAULT_OPTIONS = {
			RGB = true,
			RRGGBB = true,
			names = true,
			RRGGBBAA = false,
			rgb_fn = false,
			hsl_fn = false,
			css = false,
			css_fn = false,
			mode = "background",
		}
	end,
}
