return {
	"navarasu/onedark.nvim",
	priority = 1000,
	config = function()
		require("onedark").setup({
			style = "darker",
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		})
		require("onedark").load()
	end,
}
