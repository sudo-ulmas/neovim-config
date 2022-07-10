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
