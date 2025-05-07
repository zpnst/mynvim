local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Tiny Plugins
map("n", "<leader>f", ":Neotree toggle<CR>", opts)
map("n", "<leader>b", ":TagbarToggle<CR>", opts)

-- Pages
map("n", "<leader>pm", ":tabnew<CR>", opts)
map("n", "<leader>pc", ":tabclose<CR>", opts)
map("n", "<leader>pn", ":tabnext<CR>", opts)
map("n", "<leader>pp", ":tabprev<CR>", opts)

-- Windows
map("n", "<leader>sh", ":split<CR>", opts)
map("n", "<leader>sv", ":vsplit<CR>", opts)

-- Terminal 
map("n", "<leader>th", ":split | terminal<CR>", opts)
map("n", "<leader>tv", ":vsplit | terminal<CR>", opts)
map("n", "<leader>tn", ":tabnew | terminal<CR>", opts)

-- Utils
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>x", ":x<CR>", opts)

-- Other
vim.keymap.set({ 'n', 'x' }, 'cp', '"+y')

-- Coc
map("i", "<CR>", 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', { expr = true, silent = true })

