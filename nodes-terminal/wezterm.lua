-- vim: set fdl=1:

-- Joseph Harriott - Thu 24 Apr 2025
-- $OSAB/nodes-terminal/wezterm.lua ($OSAB/nodes-set/jo-0.sh)

local wezterm = require 'wezterm'

local config = wezterm.config_builder()

  -- config.color_scheme = 'Builtin Pastel Dark'
  -- config.color_scheme = 'Builtin Tango Dark'
  -- config.color_scheme = 'Campbell (Gogh)'
  config.color_scheme = 'ChallengerDeep'
  config.default_prog = { 'bash', '-i' } -- so  .bashrc ($machBld/jo/Bash/bashrc) also sourced
  config.font = wezterm.font 'DejaVuSansMono'
    -- more readable than default  JetBrains Mono, and around 10% less tall
  config.font_size = 8.0
  config.inactive_pane_hsb = { saturation = 0.9, brightness = 0.5, }
  config.keys = {
    { key = 'h', mods = 'ALT|CTRL', action = wezterm.action.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
      -- needs IME off
    { key = 'v', mods = 'ALT|CTRL', action = wezterm.action.SplitVertical{ domain =  'CurrentPaneDomain' } },
  }
  config.use_dead_keys = false
  config.initial_cols = 106
  config.initial_rows = 76
    -- Openbox
      -- 70 good when  JetBrains Mono
      -- 80 good when  DejaVuSansMono
    -- seems to not overreach
    -- Xfce
      -- 76 good when  DejaVuSansMono
  config.tab_bar_at_bottom = true
  config.use_fancy_tab_bar = false
  config.use_ime = false -- thus avoid triggering  fcitx clipboard  with ctrl+;

return config

