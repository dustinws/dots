local wezterm = require("wezterm")

wezterm.on("gui-startup", function()
	local tab, pane, window = wezterm.mux.spawn_window({})
	window:gui_window():maximize()
end)

local config = wezterm.config_builder()

config.font = wezterm.font("Monofur Nerd Font Mono")
config.font_size = 20
config.line_height = 1.2

config.enable_tab_bar = false
config.window_background_opacity = 0.7

config.window_decorations = "TITLE"

config.color_scheme = "nord"

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
