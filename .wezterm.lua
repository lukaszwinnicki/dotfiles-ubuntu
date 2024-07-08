local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "catppuccin-macchiato"
config.font = wezterm.font("JetBrains Mono")
-- config.window_background_opacity = 0.9

return config
