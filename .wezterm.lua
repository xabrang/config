local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Orangish (terminal.sexy)"
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
	{ key = "h", mods = "CTRL", action = act.ActivatePaneDirection("Left") },
	{ key = "h", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Left", 1 }) },
	{ key = "l", mods = "CTRL", action = act.ActivatePaneDirection("Right") },
	{ key = "l", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Right", 1 }) },
	{ key = "k", mods = "CTRL", action = act.ActivatePaneDirection("Up") },
	{ key = "k", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Up", 1 }) },
	{ key = "j", mods = "CTRL", action = act.ActivatePaneDirection("Down") },
	{ key = "j", mods = "ALT|CTRL", action = act.AdjustPaneSize({ "Down", 1 }) },
}

return config
