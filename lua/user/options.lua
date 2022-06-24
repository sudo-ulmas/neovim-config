-- :help options
local options = {
cursorline = true,                -- highlight the current line,
number = true,                    -- display line numbers
cmdheight = 2,                    -- cmd line height
showmode = false,                 -- things like -- INSERT -- are disabled
wrap = false,                     -- display lines as one long line
scrolloff = 8,                    -- minimal number of screen lines to keep above and below the cursor
sidescrolloff = 8,
termguicolors = true,	          -- set terminal gui colors to apply to neovim also
splitbelow = true,		  -- new vertical widnwo split will be below
splitright = true,                -- new horizontal window split will be on the right
relativenumber = false,            -- set relative numbered lines
}
for k,v in pairs(options) do
	vim.opt[k]=v
end
