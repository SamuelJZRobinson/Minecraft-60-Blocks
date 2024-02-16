# Notes
  # The time delay for subsequent scripts is equal to the schedule multiplied by 6

# Increment Score
scoreboard players add rotate ChestMenuExplore 1

# Teleport Player
execute if score rotate ChestMenuExplore matches 1 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Playing] ~32 ~ ~-32
execute if score rotate ChestMenuExplore matches 2 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Playing] ~32 ~ ~32
execute if score rotate ChestMenuExplore matches 3 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Playing] ~-32 ~ ~32
execute if score rotate ChestMenuExplore matches 4 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Playing] ~-32 ~ ~-32
execute if score rotate ChestMenuExplore matches 5 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Playing] ~ ~ ~

# Kill Entities
execute as @e[type=minecraft:slime] run data modify entity @s Size set value 0
kill @e[team=Enemy]
kill @e[team=Item]
kill @e[type=slime]

# Final
execute if score rotate ChestMenuExplore matches 5 run gamerule doMobLoot true
execute if score rotate ChestMenuExplore matches 5 run kill @e[type=armor_stand,tag=locationCentre]
execute if score rotate ChestMenuExplore matches 5 as @p[team=Playing] run function mc:timer/scavenge/clear_all
execute if score rotate ChestMenuExplore matches 5 run scoreboard players set fakeBlindness GameStatus 3
# execute if score rotate ChestMenuExplore matches 5 run team empty Item
execute if score rotate ChestMenuExplore matches 5 run scoreboard players set rotate ChestMenuExplore 0

# Loop
execute if score rotate ChestMenuExplore matches 1..5 run schedule function mc:timer/expedition/clear_location_rotate 3t replace