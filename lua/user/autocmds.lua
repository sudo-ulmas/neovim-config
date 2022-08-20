local api = vim.api

-- format dart files on save
local autoFormat = api.nvim_create_augroup("AutoFormat", {clear = true})
api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.dart",
command = "silent! lua vim.lsp.buf.formatting()",
group = autoFormat,
})
