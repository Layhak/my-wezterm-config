-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config = {
	color_scheme = "Catppuccin Macchiato (Gogh)",
	font = wezterm.font("MesloLGS NF"),
	font_size = 16,

	-- Set initial window size
	initial_cols = 120,
	initial_rows = 35,

	-- background image config
	background = {
		{
			source = {
				File = "/Users/heng.layhak/Documents/photo_and_icon/photo/Sunset Trees Mountains.jpg",
			},
			hsb = {
				hue = 1.0,
				saturation = 0.8,
				brightness = 0.3,
			},
			width = "100%",
			height = "100%",
			-- opacity = 0.8,
		},
		{
			source = {
				Color = "#171717",
			},
			width = "100%",
			height = "100%",
			opacity = 0.4,
		},
	},

	-- window padding
	window_padding = {
		left = 40,
		right = 40,
		top = 40,
		bottom = 40,
	},

	-- window_decorations
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	-- config.window_background_opacity = 0.9
	-- macos_window_background_blur = 20,
	window_close_confirmation = "NeverPrompt",

	-- cursor
	default_cursor_style = "BlinkingBar",
}

-- and finally, return the configuration to wezterm
return config
