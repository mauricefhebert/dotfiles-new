-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Save the wezterm action API in variables
local act = wezterm.action

-- Configuration object
local config = {
  window_decorations = "RESIZE",
  default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' },
  -- color_scheme = 'AdventureTime',
  font = wezterm.font 'FiraCode Nerd Font',
  window_background_opacity = 0.8,
  font_size = 12,
  line_height = 1.2,
  use_dead_keys = false,
  scrollback_lines = 5000,
  hide_tab_bar_if_only_one_tab = true,
  inactive_pane_hsb = {  saturation = 0.8,  brightness = 0.7,},
}

return config
