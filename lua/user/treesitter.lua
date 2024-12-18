local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"lua","help", "dart", "yaml","json", "swift", "latex","ruby"},
  auto_install = false,
  sync_install = false,
  ignore_install = { "help" }, -- List of parsers to ignore installing
	autopairs = {
		enable = true,
	},
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
}
