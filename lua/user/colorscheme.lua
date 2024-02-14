-- local colorscheme = 'minimal'
-- local colorscheme = 'gruvbox'
-- local colorscheme = 'tokyonight-night'
local colorscheme = 'catppuccin-macchiato'

--vim.g.minimal_transparent_background = true
local status_ok, _ = pcall(vim.cmd, 'colorscheme '.. colorscheme)
if not status_ok then
	vim.notify('colorscheme ' .. colorscheme .. ' not found!')
	return
end

