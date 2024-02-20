# Sync Score
execute as @e[type=armor_stand,tag=bunkerTitle] run data modify entity @s CustomNameVisible set value 0b
scoreboard players operation preBunkerLook GameStatus = bunkerLook GameStatus

# Show Name
execute if score bunkerLook GameStatus matches 1 as @e[type=armor_stand,tag=bunkerAmmo,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 2 as @e[type=armor_stand,tag=bunkerAxe,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 3 as @e[type=armor_stand,tag=bunkerHandbook,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 4 as @e[type=armor_stand,tag=bunkerBugSpray,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 5 as @e[type=armor_stand,tag=bunkerCards,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 6 as @e[type=armor_stand,tag=bunkerCheckers,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 7 as @e[type=armor_stand,tag=bunkerFlashlight,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 8 as @e[type=armor_stand,tag=bunkerGasMask,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 9 as @e[type=armor_stand,tag=bunkerGun,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 10 as @e[type=armor_stand,tag=bunkerHarmonica,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 11 as @e[type=armor_stand,tag=bunkerMap,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 12 as @e[type=armor_stand,tag=bunkerMedkit,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 13 as @e[type=armor_stand,tag=bunkerPadlock,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 14 as @e[type=armor_stand,tag=bunkerRadio,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 15 as @e[type=armor_stand,tag=bunkerCanCount] at @s run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 16 as @e[type=armor_stand,tag=bunkerSuitcase,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 17 as @e[type=armor_stand,tag=bunkerBottleCount] at @s run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 18 as @e[type=armor_stand,tag=bunkerArmour,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score bunkerLook GameStatus matches 19 if score alive DoloresStatus matches 1 run function tf_raycast:show_dolores_status
execute if score bunkerLook GameStatus matches 20 if score alive MaryStatus matches 1 run function tf_raycast:show_mary_status
execute if score bunkerLook GameStatus matches 21 if score alive TedStatus matches 1 run function tf_raycast:show_ted_status
execute if score bunkerLook GameStatus matches 22 if score alive TimmyStatus matches 1 run function tf_raycast:show_timmy_status