# Reset Score
scoreboard players reset restartScavenge GameStatus

# Player Related
team join Playing @s
function mc:play/lobby/count_players
scoreboard players set @s ChestMenuMain 0
gamemode spectator @a[team=!Playing]
clear @a

# Declare That The Round Has Started
scoreboard players set started Lobby 1

## When Apocalypse is finished change 3 to 2..3 and remove these two commands
execute if score gamemode Settings matches 2 run tellraw @a {"text":"Apocalypse is still in development","color":"red"}
execute if score gamemode Settings matches 2 run function mc:sounds/error
execute if score gamemode Settings matches 2 run scoreboard players set started Lobby 0

execute if score gamemode Settings matches 4 run tellraw @a {"text":"Survival is still in development","color":"red"}
execute if score gamemode Settings matches 4 run function mc:sounds/error
execute if score gamemode Settings matches 4 run scoreboard players set started Lobby 0

# Initiate Game According To Playstyle
execute if score gamemode Settings matches 1 run function mc:play/gamemodes/atomic_drill/start_gamemode
execute if score gamemode Settings matches 3 run function mc:play/gamemodes/apocalypse_and_scavenge/start_gamemode
# execute if score gamemode Settings matches 4 run function mc:play/gamemodes/survival/start_gamemode

# Remove Item Showcase
## Remove if score started when all gamemodes work
execute if score started Lobby matches 1 run kill @e[type=armor_stand,tag=lobbyItem]