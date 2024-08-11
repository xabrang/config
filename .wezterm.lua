-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- For example, changing the color scheme:
config.color_scheme = "Panda (Gogh)"

config.enable_tab_bar = false

config.font = wezterm.font("MartianMono Nerd Font")
config.font_size = 9.0

return config
