local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
	'git',
	'clone',
	'--depth',
	'1',
	'https://github.com/wbthomason/packer.nvim',
	install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file

vim.cmd [[
augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]


local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify('packer status code is not ok')
	return
end

packer.init {
display = {
 open_fn = function()
	 return require('packer.util').float{border = 'rounded'}
 end,
},
}


return packer.startup(function(use)
use "wbthomason/packer.nvim" -- Have packer manage itself
use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
use "nvim-lua/plenary.nvim" -- Userful lua function used by lots of plugins
-- use "folke/tokyonight.nvim"
-- use "Yazeed1s/minimal.nvim"
use { "ellisonleao/gruvbox.nvim" }
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

-- cmp plugins
use "hrsh7th/nvim-cmp" --The completion plugin
use "hrsh7th/cmp-buffer"
use "hrsh7th/cmp-path"
use "hrsh7th/cmp-cmdline"
use "saadparwaiz1/cmp_luasnip"
use "hrsh7th/cmp-nvim-lsp"
use "hrsh7th/cmp-nvim-lua"
use "windwp/nvim-autopairs"
use { "kyazdani42/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" }
  use { "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" }
use "akinsho/bufferline.nvim"
use "moll/vim-bbye"

-- -cmpSnippets
use "L3MON4D3/LuaSnip" -- snippet engine
use "rafamadriz/friendly-snippets"

-- LSP
use "neovim/nvim-lspconfig" --enable LSP
use "williamboman/nvim-lsp-installer" -- simple to use language server installer
use "akinsho/flutter-tools.nvim"

--Telescope
use "nvim-telescope/telescope.nvim"

--Treesitter
use {
 "nvim-treesitter/nvim-treesitter",
 run = function()
	 local ts_update = require('nvim-treesitter.install').update({with_sync = true})
	 ts_update()
 end,
}

--Git
use "lewis6991/gitsigns.nvim"



if PACKER_BOOTSTRAP then
	require("packer").sync()
	end
end)
