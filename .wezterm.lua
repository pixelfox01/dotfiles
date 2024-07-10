local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "GruvboxDarkHard"
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.92
config.macos_window_background_blur = 10
config.enable_tab_bar = false
config.font = wezterm.font({ family = "JetBrains Mono", harfbuzz_features = { "calt=0", "clig=0", "liga=0" } })
config.font_size = 18.0
config.keys = {
  -- Create a new tab in the same domain as the current pane.
  -- This is usually what you want.
  {
    key = "t",
    mods = "SHIFT|ALT",
    action = act.SpawnTab("CurrentPaneDomain"),
  },
}
return config
