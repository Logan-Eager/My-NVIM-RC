-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- this IS the configuration
config.initial_cols = 120
config.initial_rows = 28

config.default_prog = { 'powershell.exe' }
config.enable_tab_bar = false

config.default_cwd = 'D:/GitRepos/'

-- font stuff 
wezterm.font("Jetbrains Mono NL")
config.font_size = 21

-- bg / colour scheme
config.color_scheme = 'Adventure Time'
config.window_background_opacity = 0.75

-- on start, maximize window
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- Return the configuration to wezterm:
return config
