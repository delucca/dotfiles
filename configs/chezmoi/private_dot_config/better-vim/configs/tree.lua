local status_ok_tree, tree = pcall(require, "nvim-tree")
local status_ok_tree_config, tree_config = pcall(require, "nvim-tree.config")

if not status_ok_tree or not status_ok_tree_config then
	return
end

local tree_cb = tree_config.nvim_tree_callback

tree.setup({
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	view = {
		width = 30,
		adaptive_size = true,
		side = "left",
		mappings = {
			list = {
				{ key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
				{ key = "h", cb = tree_cb("close_node") },
				{ key = { "v", "|", "<f11>" }, cb = tree_cb("vsplit") },
				{ key = { "-", "<f12>" }, cb = tree_cb("split") },
			},
		},
	},
})

vim.api.nvim_create_autocmd("BufEnter", {
	nested = true,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
			vim.cmd("quit")
		end
	end,
})
