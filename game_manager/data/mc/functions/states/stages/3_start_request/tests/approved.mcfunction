# Adjust Scores
### What is this for?
scoreboard players reset restartScavenge GameStatus
scoreboard players set started GameStatus 1

# Remove Game Menu
function mc:states/stages/2_lobby/set/place_empty_signs_menu

# Remove Item Showcase
execute if score started GameStatus matches 1 run kill @e[type=armor_stand,tag=lobbyItem]

# Setup Players
### Everyone else remains in Lobby team and gets set to spectator or Enemy later if updated
team join Playing @s
scoreboard players set @s ChestMenuMain 0
clear @a

# Run Gamemode
# execute if score gamemode Settings matches 1 run function mc:states/stages/5_atomic_drill/start_gamemode
# execute if score gamemode Settings matches 3 run function mc:play/gamemodes/apocalypse_and_scavenge/start_gamemode