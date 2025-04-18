local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find File" })
vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find Text" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffer" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })

vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Git Branches" })
vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git Commits" })
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git Status" })

vim.keymap.set("n", "<leader>ls", builtin.lsp_document_symbols, { desc = "Document Symbols" })
vim.keymap.set('n', 'gr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions,
               {noremap = true, silent = true})
