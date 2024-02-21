# Notes
  ### Duration must be set before reaching mc:events/daily/show_day to prevent errors.
  ### Gear managed by mc:daily/show_day when the character returns.
  # Expedition state should only be used for item delivery or POV scavenge.
  # Expedition duration set before POV.
  # Bunker items removed immediately, POV items given when expeditionDuration is 0.

# Remember
scoreboard players operation characterSent MenuExplore = characterSelect MenuExplore
scoreboard players operation mapVisited MenuExplore = mapSelect MenuExplore

# Duration
execute unless score gamemode Settings matches 1 run function cm:pages/submit/expedition/time/set/set_time
execute if score task AtomicDrill matches 13 run scoreboard players set expeditionDuration MenuExplore 3

# Characters
function cm:pages/submit/expedition/characters/set/set_hide
function cm:pages/submit/expedition/characters/set/set_tired

# Items
  # Remove From Bunker
  ### Maybe split into duplicate scripts? Or too redundant?
  function cm:pages/submit/manage_slot_give

# Debounce
scoreboard players set expeditionReady MenuExplore 0