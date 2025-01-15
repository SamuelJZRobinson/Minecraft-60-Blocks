# Notes
  # Expedition state should only be used for [item delivery] or POV scavenge???
  # Expedition duration set before POV scavenge.
  # Bunker items always removed immediately, POV items given when expeditionDuration is 0.

# Remember Details
scoreboard players operation characterSent MenuExpedition = characterSelect MenuExpedition
scoreboard players operation mapVisited MenuExpedition = mapSelect MenuExpedition

# Characters
function cm:pages/submit/expedition/set_tired

# Items
function cm:pages/submit/expedition/items/manage_items

# Time
execute unless score gamemode Settings matches 1 run function cm:pages/submit/expedition/set_expedition_days
execute if score task AtomicDrill matches 13 run scoreboard players set expeditionDuration MenuExpedition 3

# Debounce
scoreboard players set expeditionReady MenuExpedition 0