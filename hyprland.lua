-- Lanternfall window chrome.
--
-- This file REPLACES default/themed/hyprland.lua.tpl entirely (Omarchy skips a
-- template whose output already exists), so the border colors are restated here
-- rather than inherited. Keep them in sync with colors.toml.

local active_border_color = { colors = { "rgba(c07b55ee)", "rgba(a48ab2cc)" }, angle = 45 }
local inactive_border_color = "rgba(1e1b3199)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  -- Omarchy ships shadows off. A warm, low-alpha glow on the focused window
  -- only -- it reads as lantern light and makes focus obvious without widening
  -- the border. Inactive windows get a plain dark shadow for depth.
  decoration = {
    shadow = {
      enabled = true,
      range = 10,
      render_power = 3,
      color = "rgba(c07b5540)",
      color_inactive = "rgba(07060e55)",
    },
  },
})
