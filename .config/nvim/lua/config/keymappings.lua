local keymap = vim.keymap.set
local silent = { silent = true }

keymap("n", "<C-Space>", "<cmd>lua vim.lsp.buf.code_action()<CR>", silent)

-- Telescope
keymap("n", "<C-p>", "<CMD>lua require('plugins.telescope').project_files()<CR>")
keymap("n", "<Leader>f", "<CMD>lua require('plugins.telescope.pickers.multi-rg')()<CR>")