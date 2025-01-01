### Notes (Temp)
  # Each part of the game has a unique clock, including: 
  # 0 (lobby), 
  # 1 (exploration), 
  # 2 (scavenge), 
  # 3 (idle bunker), and 
  # 4 (expedition)
  ### Loop must be called with tick.json instead of a schedule to stop chest menu items from vanishing

# Cosmetics And Particles
execute if score state GameStatus matches 5..7 as @e[tag=spin] at @s run tp @e[tag=spin] ~ ~ ~ ~3 ~

# Salvage Crate
execute if score lockInventory GameStatus matches 2.. run function mc:utility/scavenge/collect/manage_collect

# Chest Menu
execute if score state GameStatus matches 8 as @p[Mobsteam=Player] run function cm:manage_chest_menu

# Raycast
### Might need to make 1 tick for faster label rendering
execute if score state GameStatus matches 8..9 unless score gamemode Settings matches 3 as @p[Mobsteam=Player] run function tf_raycast:manage_raycast

# Character Death
execute if score state GameStatus matches 9 as @p[Mobsteam=Player,scores={PlayerDeaths=1..}] run function mc:timer/expedition/character_death