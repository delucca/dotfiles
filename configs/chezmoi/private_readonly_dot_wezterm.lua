local wezterm = require("wezterm")
local mux = wezterm.mux
local action = wezterm.action

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

return {
	font = wezterm.font_with_fallback({
		"MonoLisa",
		"Noto Color Emoji",
		"PowerlineExtraSymbols",
	}),
	font_size = 11.5,
	line_height = 1.2,
	color_scheme = "Catppuccin Mocha",
	window_background_opacity = 0.99,
	hide_tab_bar_if_only_one_tab = true,
	window_close_confirmation = "NeverPrompt",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	keys = {
		{
			key = "k",
			mods = "SHIFT|CTRL",
			action = action.ToggleFullScreen,
		},
		{
			key = "Enter",
			mods = "ALT",
			action = action.SendKey({ key = "F11" }),
		},
		{
			key = "Enter",
			mods = "SHIFT",
			action = action.SendKey({ key = "F12" }),
		},
	},
}
