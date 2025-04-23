
-- Joseph Harriott - lun 21 avr 2025
-- $OSAB/nodes/wezterm.lua ($OSAB/nodes/set/jo-0.sh)

local wezterm = require 'wezterm'
local config = wezterm.config_builder()

  config.color_scheme = 'AlienBlood'
  config.font_size = 9.0
  config.use_dead_keys = false
  config.window_background_opacity = 0.85
  config.initial_cols = 106
  config.initial_rows = 55

return config

