-- local colorscheme = 'minimal'
local colorscheme = 'gruvbox'
-- local colorscheme = 'tokyonight-day'
-- local colorscheme = 'tokyonight-night'
-- local colorscheme = 'tokyonight-storm'
-- local colorscheme = 'catppuccin-latte'
-- local colorscheme = 'catppuccin-frappe'
-- local colorscheme = 'catppuccin-macchiato'
-- local colorscheme = 'catppuccin-mocha'
-- local colorscheme = 'kanagawa'
-- local colorscheme = 'cyberdream'

-- vim.g.minimal_transparent_background = true
local status_ok, _ = pcall(vim.cmd, 'colorscheme '.. colorscheme)
if not status_ok then
	vim.notify('colorscheme ' .. colorscheme .. ' not found!')
	return
end

