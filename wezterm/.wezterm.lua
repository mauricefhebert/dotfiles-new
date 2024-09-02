-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Save the wezterm action API in variables
local act = wezterm.action

-- Configuration object
local config = {
  window_decorations = "RESIZE",
  default_prog = { 'C:\\Program Files\\Git\\bin\\bash.exe', '-il' },
  color_scheme = 'AdventureTime',
  font = wezterm.font 'FiraCode Nerd Font',
  window_background_opacity = 0.75,
  font_size = 12,
  line_height = 1.2,
  use_dead_keys = false,
  scrollback_lines = 5000,
  hide_tab_bar_if_only_one_tab = true,
--  disable_default_key_bindings = true,

  -- Keybindings
  -- leader = { key = 'b', mods = 'CMD', timeout_milliseconds = 2000 },
  -- keys = {
  --   { key = 'l', mods = 'CMD|SHIFT', action = act.ActivateTabRelative(1) },
  --   { key = 'h', mods = 'CMD|SHIFT', action = act.ActivateTabRelative(-1) },
  --   { key = 'j', mods = 'CMD', action = act.ActivatePaneDirection 'Down' },
  --   { key = 'k', mods = 'CMD', action = act.ActivatePaneDirection 'Up' },
  --   { key = 'Enter', mods = 'CMD', action = act.ActivateCopyMode },
  --   { key = 'R', mods = 'SHIFT|CTRL', action = act.ReloadConfiguration },
  --   { key = '+', mods = 'CTRL', action = act.IncreaseFontSize },
  --   { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
  --   { key = '0', mods = 'CTRL', action = act.ResetFontSize },
  --   { key = 'C', mods = 'SHIFT|CTRL', action = act.CopyTo 'Clipboard' },
  --   { key = 'N', mods = 'SHIFT|CTRL', action = act.SpawnWindow },
  --   { key = 'U', mods = 'SHIFT|CTRL', action = act.CharSelect{ copy_on_select = true, copy_to = 'ClipboardAndPrimarySelection' } },
  --   { key = 'v', mods = 'CMD', action = act.PasteFrom 'Clipboard' },
  --   { key = 'PageUp', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
  --   { key = 'PageDown', mods = 'CTRL', action = act.ActivateTabRelative(1) },
  --   { key = 'LeftArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Left' },
  --   { key = 'RightArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Right' },
  --   { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Up' },
  --   { key = 'DownArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Down' },
  --   { key = 'f', mods = 'CMD', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
  --   { key = 'd', mods = 'CMD', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  --   { key = 'h', mods = 'CMD', action = act.ActivatePaneDirection 'Left' },
  --   { key = 'l', mods = 'CMD', action = act.ActivatePaneDirection 'Right' },
  --   { key = 't', mods = 'CMD', action = act.SpawnTab 'CurrentPaneDomain' },
  --   { key = 'w', mods = 'CMD', action = act.CloseCurrentTab{ confirm = false } },
  --   { key = 'x', mods = 'CMD', action = act.CloseCurrentPane{ confirm = false } },
  --   { key = 'b', mods = 'LEADER|CTRL', action = act.SendString '\x02' },
  --   { key = 'Enter', mods = 'LEADER', action = act.ActivateCopyMode },
  --   { key = 'k', mods = 'CTRL|ALT', action = act.Multiple{
  --       act.ClearScrollback 'ScrollbackAndViewport',
  --       act.SendKey { key = 'L', mods = 'CTRL' },
  --     },
  --   },
  --   { key = 'r', mods = 'LEADER', action = act.ActivateKeyTable { name = 'resize_pane', one_shot = false } },
  -- },
}

return config
