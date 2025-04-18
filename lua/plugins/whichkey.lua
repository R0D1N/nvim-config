return {
	"folke/which-key.nvim",
	opts = {
		defaults = {
			-- Comment
			["<leader>c"] = { name = "+Comment" },
			["<leader>cl"] = { desc = "Comment Line" },

			-- File Manager
			["<leader>e"] = { desc = "File Manager" },

			-- Find
			["<leader>f"] = { name = "+Find" },
			["<leader>fb"] = { desc = "Find Buffer" },
			["<leader>ff"] = { desc = "Find File" },
			["<leader>fh"] = { desc = "Find Help" },
			["<leader>fw"] = { desc = "Find Text" },

			-- Git
			["<leader>g"] = { name = "+Git" },
			["<leader>gb"] = { desc = "Branches" },
			["<leader>gc"] = { desc = "Commits" },
			["<leader>gs"] = { desc = "Status" },

			-- Highlight
			["<leader>h"] = { desc = "No highlight" },

			-- LSP
			["<leader>l"] = { name = "+LSP" },
			["<leader>lD"] = { desc = "Hover diagnostic" },
			["<leader>la"] = { desc = "Action" },
			["<leader>ld"] = { desc = "Diagnostic" },
			["<leader>lf"] = { desc = "Format" },
			["<leader>lr"] = { desc = "Rename" },
			["<leader>ls"] = { desc = "Symbol" },

			-- Git status again (misc?)
			["<leader>o"] = { desc = "Git status" },

			-- Terminal
			["<leader>t"] = { name = "+Terminal" },
			["<leader>tf"] = { desc = "Float terminal" },
			["<leader>th"] = { desc = "Horizontal terminal" },
			["<leader>tv"] = { desc = "Vertical terminal" },

			-- Save & close
			["<leader>w"] = { desc = "Save" },
			["<leader>x"] = { desc = "Close Buffer" },
		},
	},
}
