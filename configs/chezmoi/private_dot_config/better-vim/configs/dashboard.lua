local status_ok, dashboard = pcall(require, "dashboard")
if not status_ok then
	return
end

dashboard.custom_center = {
	{
		icon = "  ",
		desc = "Open explorer                     ",
		action = "NvimTreeToggle",
		shortcut = "alt+e",
	},
	{
		icon = "  ",
		desc = "Find file                         ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "alt+p",
	},
	{
		icon = "  ",
		desc = "Search                            ",
		action = "Telescope live_grep",
		shortcut = "alt+f",
	},
	{
		icon = "  ",
		desc = "Change project              ",
		action = "Telescope projects",
		shortcut = "alt+shift+p",
	},
}
