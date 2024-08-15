local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Grayscale Dark (base16)"
config.colors = {
	background = "black",
}

config.enable_tab_bar = false

config.font = wezterm.font("MartianMono Nerd Font")
config.font_size = 9.0

local act = wezterm.action

config.keys = {
	{ key = "-", mods = "ALT|CTRL", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "|", mods = "SHIFT|ALT|CTRL", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
}

return config
