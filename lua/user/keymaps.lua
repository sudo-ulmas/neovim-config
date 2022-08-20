local  opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap


-- Window navigation
keymap('n','<C-h>', '<C-w>h', opts)
keymap('n','<C-j>', '<C-w>j', opts)
keymap('n','<C-k>', '<C-w>k', opts)
keymap('n','<C-l>', '<C-w>l', opts)

keymap('v', 'p', '"_dP', opts)

--Remap space as a leaeder key
keymap('','<Space>','<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap('n', '<leader>e', ':NvimTreeToggle<CR>',opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>b", ":BufferLinePick<CR>", opts)
keymap("n", "<leader>w", ":Bdelete!<CR>", opts)
keymap("n", "<leader>t", ":Telescope find_files<CR>", opts)
-- LSP keymaps
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
keymap("n", "gl", '<cmd>lua vim.lsp.diagnostic.open_float({ border = "rounded" })<CR>', opts)
keymap("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
keymap("n", "<leader>q", '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
