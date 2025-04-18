local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
-- Sntup language servers.
local lspconfig = require("lspconfig")
lspconfig.pyright.setup({})
lspconfig.ts_ls.setup({})
lspconfig.prismals.setup({})
lspconfig.cssls.setup({
	capabilities = capabilities,
})
lspconfig.golangci_lint_ls.setup({})
lspconfig.rust_analyzer.setup({
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = true,
				experimental = {
					enable = true,
				},
			},
		},
	},
})
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<leader>lD", vim.diagnostic.open_float, { desc = "Hover Diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>ld", vim.diagnostic.setloclist, { desc = "Diagnostic List" })

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }

		vim.keymap.set(
			"n",
			"gD",
			vim.lsp.buf.declaration,
			vim.tbl_extend("force", opts, { desc = "Go to Declaration" })
		)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Hover" }))
		vim.keymap.set(
			"n",
			"gi",
			vim.lsp.buf.implementation,
			vim.tbl_extend("force", opts, { desc = "Go to Implementation" })
		)
		vim.keymap.set(
			"n",
			"<C-k>",
			vim.lsp.buf.signature_help,
			vim.tbl_extend("force", opts, { desc = "Signature Help" })
		)
		vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename" }))
		vim.keymap.set(
			{ "n", "v" },
			"<leader>la",
			vim.lsp.buf.code_action,
			vim.tbl_extend("force", opts, { desc = "Code Action" })
		)
		vim.keymap.set("n", "<leader>lf", function()
			vim.lsp.buf.format({ async = true })
		end, vim.tbl_extend("force", opts, { desc = "Format" }))
	end,
})
