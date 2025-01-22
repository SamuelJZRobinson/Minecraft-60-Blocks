# Spin
execute if score gameState GameStatus matches 5..7 as @e[type=armor_stand,tag=spin] at @s run tp @s ~ ~ ~ ~3 ~

# Scavenge
  # Stop Movement
  execute if score gameState GameStatus matches 4 as @p[team=Player] run function gc:utility/tp/tp_house
  # Collect Items
  execute if score gameState GameStatus matches 5..7 run function gc:states/7_scavenge_house/items/collect/manage_collect
  execute if score gameState GameStatus matches 9 run function gc:states/7_scavenge_house/items/collect/manage_collect

# Gamemodes
  # Atomic Drill
  function gc:states/5_atomic_drill/task/manage_tasks

# Chest Menu
execute if score gameState GameStatus matches 8 as @p[team=Player] run function cm:manage_chest_menu

# Raycast
execute if score gameState GameStatus matches 8..9 unless score gamemode Settings matches 3 as @p[team=Player] run function rc:manage_raycast

# In-Person Expedition Death
execute if score gameState GameStatus matches 9 if score doInPersonExpedition Settings matches 1 as @p[team=Player,scores={PlayerDeaths=1..}] run function gc:states/9_expedition/character_death