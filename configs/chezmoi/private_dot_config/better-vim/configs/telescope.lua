local status_ok_telescope, telescope = pcall(require, "telescope")
local status_ok_telescope_actions, telescope_actions = pcall(require, "telescope.actions")

if not status_ok_telescope or not status_ok_telescope_actions then
	return
end

telescope.load_extension("coc")
telescope.load_extension("media_files")
telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<c-j>"] = telescope_actions.move_selection_next,
				["<c-k>"] = telescope_actions.move_selection_previous,
				["<c-q>"] = telescope_actions.send_to_qflist + telescope_actions.open_qflist,
				["<c-c>"] = telescope_actions.close,
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
