local  opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap


-- Window navigation
keymap('n','<C-h>', '<C-w>h', opts)
keymap('n','<C-j>', '<C-w>j', opts)
keymap('n','<C-k>', '<C-w>k', opts)
keymap('n','<C-l>', '<C-w>l', opts)

keymap('v', 'p', '"_dP', opts)
keymap('i', 'jj', '<Esc>', opts)

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
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
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
keymap("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
keymap("n", "<leader>q", '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]

-- Telescope
keymap("n","<leader>fc", ":Telescope flutter commands<CR>", opts)
keymap("n","<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "=", [[<cmd>vertical resize +5<cr>]], opts) -- make the window biger vertically
keymap("n", "-", [[<cmd>vertical resize -5<cr>]], opts) -- make the window smaller vertically
keymap("n", "+", [[<cmd>horizontal resize +2<cr>]], opts) -- make the window bigger horizontally by pressing shift and =
keymap("n", "_", [[<cmd>horizontal resize -2<cr>]], opts) -- make the window smaller horizontally by pressing shift and -


function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

keymap("n", "<leader>t", ":ToggleTerm<CR>", opts) 
keymap("n", "2<leader>t", ":2ToggleTerm<CR>", opts) 
keymap("n", "3<leader>t", ":3ToggleTerm<CR>", opts) 
keymap("n", "4<leader>t", ":4ToggleTerm<CR>", opts) 

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
