function ColorMyPencils(color)
	color = color or "oxocarbon"
	vim.opt.background = "dark" -- oxocarbon needs this set; "light" for the light variant
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end

return {
	-- Active theme: oxocarbon (the nyoom look)
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false,
		priority = 1000, -- load before everything else
		config = function()
			ColorMyPencils()
		end,
	},

	-- The rest stay installed but inactive — switch with :colorscheme <name>
	-- or by passing the name to ColorMyPencils("gruvbox") etc.
	{ "erikbackman/brightburn.vim" },

	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		lazy = true,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				undercurl = true,
				underline = false,
				bold = true,
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true,
				contrast = "",
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = true,
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					sidebars = "dark",
					floats = "dark",
				},
			})
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
			})
		end,
	},
}
