local wezterm = require("wezterm")

local config = wezterm.config_builder()

--config.color_scheme = "catppuccin-macchiato"
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"Fira Code",
	"DengXian",
})
config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true

return config
