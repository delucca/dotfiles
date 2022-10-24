local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup({
	options = {
		component_separators = { left = "", right = "" },
		globalstatus = true,
	},
	sections = {
		lualine_x = { "g:coc_status", "diagnostics" },
		lualine_y = { "branch" },
	},
})
