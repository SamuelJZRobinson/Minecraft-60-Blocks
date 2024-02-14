# Notes
  # Each part of the game has a unique clock, including: 0 (lobby), 1 (exploration), 2 (scavenge), 3 (idle bunker), and 4 (expedition)
  #### Loop must be called with tick.json instead of a schedule to stop chest menu items from vanishing

# Spin Markers
execute unless score clock Timer matches 3.. as @e[tag=spin] at @s run tp @e[tag=spin] ~ ~ ~ ~3 ~

# Scavenge
execute if score lockInventory GameStatus matches 2.. run function mc:status/scavenge/manage_salvage

# Character Death
execute if score clock Timer matches 4 as @p[team=Playing,scores={PlayerDeaths=1..}] run function mc:timers/expedition/character_death

# Chest Menu
execute if score clock Timer matches 3 as @p[team=Playing] run function cm:manage_chest_menu

# Raycast
execute if score clock Timer matches 3..4 as @p[team=Playing] run function tf_raycast:manage_raycast