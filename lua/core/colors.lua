vim.opt.termguicolors = true

function SetColor(color)
	color = color or "kanagawa-wave"

	if color:match("kanagawa") then
		require("kanagawa").setup({
			transparent = true,
			dimInactive = false,
			background = {
				dark = "wave", -- или "dragon"
				light = "lotus",
			},
		})
	end

	vim.cmd.colorscheme(color)
end

SetColor("kanagawa-wave")
