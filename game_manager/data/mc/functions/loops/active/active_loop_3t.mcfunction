# Notes
  # Each part of the game has a unique clock, including: 
  # 0 (lobby), 
  # 1 (exploration), 
  # 2 (scavenge), 
  # 3 (idle bunker), and 
  # 4 (expedition)
  #### Loop must be called with tick.json instead of a schedule to stop chest menu items from vanishing

# Inventory
execute if score lockInventory GameStatus matches 2.. run function mc:status/scavenge/manage_salvage

# Cosmetics And Particles
execute if score state GameStatus matches 5..6 as @e[tag=spin] at @s run tp @e[tag=spin] ~ ~ ~ ~3 ~

# Chest Menu
execute if score state GameStatus matches 5..7 as @p[team=Playing] run function cm:manage_chest_menu

# Raycast
execute if score state GameStatus matches 7..8 as @p[team=Playing] run function tf_raycast:manage_raycast

# Character Death
execute if score state GameStatus matches 8 as @p[team=Playing,scores={PlayerDeaths=1..}] run function mc:timer/expedition/character_death