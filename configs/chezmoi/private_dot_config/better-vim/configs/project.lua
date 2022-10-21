local status_ok_project, project = pcall(require, "project_nvim")
local status_ok_telescope, telescope = pcall(require, "telescope")

if not status_ok_project or not status_ok_telescope then
	return
end

project.setup({
	active = true,
	on_config_done = nil,
	manual_mode = false,
	detection_methods = { "pattern" },
	patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
	show_hidden = false,
	silent_chdir = true,
	ignore_lsp = {},
	datapath = vim.fn.stdpath("data"),
})

telescope.load_extension("projects")
