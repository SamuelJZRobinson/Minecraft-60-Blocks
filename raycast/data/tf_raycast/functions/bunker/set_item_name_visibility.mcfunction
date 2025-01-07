# Sync Score
execute as @e[type=armor_stand,tag=bunkerTitle] run data modify entity @s CustomNameVisible set value 0b
scoreboard players operation preBunkerLook GameStatus = bunkerLook GameStatus

# Show Name
execute if score bunkerLook GameStatus matches 1 as @e[type=armor_stand,tag=ammo,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 2 as @e[type=armor_stand,tag=axe,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 3 as @e[type=armor_stand,tag=boyScoutHandbook,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 4 as @e[type=armor_stand,tag=bugSpray,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 5 as @e[type=armor_stand,tag=cards,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 6 as @e[type=armor_stand,tag=checkers,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 7 as @e[type=armor_stand,tag=flashlight,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 8 as @e[type=armor_stand,tag=gasMask,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 9 as @e[type=armor_stand,tag=gun,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 10 as @e[type=armor_stand,tag=harmonica,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 11 as @e[type=armor_stand,tag=map,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 12 as @e[type=armor_stand,tag=medkit,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 13 as @e[type=armor_stand,tag=padlock,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 14 as @e[type=armor_stand,tag=radio,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 15 as @e[type=armor_stand,tag=soupsTitle] at @s run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 16 as @e[type=armor_stand,tag=suitcase,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 17 as @e[type=armor_stand,tag=watersTitle] at @s run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 18 as @e[type=armor_stand,tag=bodyArmour,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 19 if score alive DoloresStatus matches 1 run function tf_raycast:bunker/show_dolores_status
execute if score bunkerLook GameStatus matches 20 if score alive MaryStatus matches 1 run function tf_raycast:bunker/show_mary_status
execute if score bunkerLook GameStatus matches 21 if score alive TedStatus matches 1 run function tf_raycast:bunker/show_ted_status
execute if score bunkerLook GameStatus matches 22 if score alive TimmyStatus matches 1 run function tf_raycast:bunker/show_timmy_status