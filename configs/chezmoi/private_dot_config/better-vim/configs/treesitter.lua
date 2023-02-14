local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not status_ok then
	return
end

treesitter.setup({
	ensure_installed = "all",
	sync_install = false,
	highlight = {
		enable = true,
		disable = { "latex" },
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	refactor = {
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
		highlight_definitions = {
			enable = true,
			clear_on_cursor_move = true,
		},
	},
})
