# Notes
  # Expedition state should only be used for [item delivery] or POV scavenge???
  # Expedition duration set before POV scavenge.
  # Bunker items always removed immediately, POV items given when expeditionDuration is 0.

# Remember Details
scoreboard players operation characterSent MenuExplore = characterSelect MenuExplore
scoreboard players operation mapVisited MenuExplore = mapSelect MenuExplore

# Characters
function cm:pages/submit/expedition/characters/set/set_hide
function cm:pages/submit/expedition/characters/set/set_tired

# Items
function cm:pages/submit/expedition/items/manage_items

# Time
execute unless score gamemode Settings matches 1 run function cm:pages/submit/expedition/time/set/set_time
execute if score task AtomicDrill matches 13 run scoreboard players set expeditionDuration MenuExplore 3

# Debounce
scoreboard players set expeditionReady MenuExplore 0