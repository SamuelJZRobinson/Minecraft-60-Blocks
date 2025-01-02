# Notes
  # The time delay for subsequent scripts is equal to the schedule multiplied by 6

# Increment Score
scoreboard players add rotate MenuExplore 1

# Teleport Player
execute if score rotate MenuExplore matches 1 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Player] ~32 ~ ~-32
execute if score rotate MenuExplore matches 2 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Player] ~32 ~ ~32
execute if score rotate MenuExplore matches 3 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Player] ~-32 ~ ~32
execute if score rotate MenuExplore matches 4 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Player] ~-32 ~ ~-32
execute if score rotate MenuExplore matches 5 at @e[type=minecraft:armor_stand,tag=locationCentre,limit=1] run teleport @p[team=Player] ~ ~ ~

# Kill Entities
execute as @e[type=minecraft:slime] run data modify entity @s Size set value 0
kill @e[Mobs]
kill @e[team=Items]
kill @e[type=slime]

# Final
execute if score rotate MenuExplore matches 5 run gamerule doMobLoot true
execute if score rotate MenuExplore matches 5 run kill @e[type=armor_stand,tag=locationCentre]
execute if score rotate MenuExplore matches 5 as @p[team=Player] run function mc:utility/scavenge/clear_all
# execute if score rotate MenuExplore matches 5 run team empty Item
execute if score rotate MenuExplore matches 5 run scoreboard players set rotate MenuExplore 0

# Loop
execute if score rotate MenuExplore matches 1..5 run schedule function mc:timer/expedition/clear_location_rotate 3t replace