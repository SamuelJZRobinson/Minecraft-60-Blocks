execute if score state GameStatus matches 5..7 as @e[type=armor_stand,tag=spin] at @s run tp @s ~ ~ ~ ~3 ~

# Scavenge
execute if score state GameStatus matches 6..7 run function mc:states/7_scavenge_house/items/collect/manage_collect
execute if score state GameStatus matches 9 run function mc:states/7_scavenge_house/items/collect/manage_collect
execute if score state GameStatus matches 7 run function mc:states/7_scavenge_house/process_items/manage_process

# Chest Menu
execute if score state GameStatus matches 8 as @p[team=Player] run function cm:manage_chest_menu

# Raycast
### Might need to make 1 tick for faster label rendering
execute if score state GameStatus matches 8..9 unless score gamemode Settings matches 3 as @p[team=Player] run function tf_raycast:manage_raycast

# Character Death
execute if score state GameStatus matches 9 as @p[team=Player,scores={PlayerDeaths=1..}] run function mc:timer/expedition/character_death