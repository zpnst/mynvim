local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Dirs
map("n", "<C-f>", ":NERDTreeFocus<CR>", opts)
map("n", "<C-n>", ":NERDTree<CR>", opts)
map("n", "<C-t>", ":NERDTreeToggle<CR>", opts)
map("n", "<F6>", ":TagbarToggle<CR>", opts)

-- Tabs
map("n", "<leader>tm", ":tabnew<CR>", opts)
map("n", "<leader>tc", ":tabclose<CR>", opts)
map("n", "<leader>tn", ":tabnext<CR>", opts)
map("n", "<leader>tp", ":tabprev<CR>", opts)

-- Terminal 
map("n", "<leader>sh", ":split | terminal<CR>", opts)
map("n", "<leader>sv", ":vsplit | terminal<CR>", opts)
map("n", "<leader>sn", ":tabnew | terminal<CR>", opts)
