local status_ok, keybindings = pcall(dofile, "/home/delucca/.config/better-vim/configs/keybindings.lua")
if not status_ok then
	return
end

return {
	mappings = {
		custom = keybindings,
	},
}
