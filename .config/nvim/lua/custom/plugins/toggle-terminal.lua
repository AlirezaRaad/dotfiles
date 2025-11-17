return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float", -- floating terminal instead of split
			float_opts = {
				border = "curved", -- terminal window border style, optional
				winblend = 0, -- transparency level, optional
				winhighlight = "NormalFloat:Normal,FloatBorder:FloatBorder",
			},
			-- other options you want to customize...
		})
	end,
}
