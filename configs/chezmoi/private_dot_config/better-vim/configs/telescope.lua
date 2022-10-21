local status_ok_telescope, telescope = pcall(require, "telescope")
local status_ok_telescope_actions, telescope_actions = pcall(require, "telescope.actions")
local status_ok_z, z = pcall(require, "telescope._extensions.zoxide.utils")
local status_ok_trouble, trouble = pcall(require, "trouble.providers.telescope")

if not status_ok_telescope or not status_ok_telescope_actions or not status_ok_z then
	return
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<c-j>"] = telescope_actions.move_selection_next,
				["<c-k>"] = telescope_actions.move_selection_previous,
				["<c-q>"] = telescope_actions.send_to_qflist + telescope_actions.open_qflist,
				["<c-c>"] = telescope_actions.close,
				["<c-t>"] = trouble.open_with_trouble,
			},
			n = {
				["<c-t>"] = trouble.open_with_trouble,
			},
		},
	},

	extensions = {
		media_files = {
			filetypes = { "png", "webp", "jpg", "jpeg" },
			find_cmd = "rg",
		},
	},
})

telescope.load_extension("coc")
telescope.load_extension("media_files")
telescope.load_extension("zoxide")
telescope.load_extension("notify")
