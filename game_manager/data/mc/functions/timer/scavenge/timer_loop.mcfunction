# Sync With Timer Engine
scoreboard players operation seconds Scavenge = seconds Timer

scoreboard players operation modulo Timer = seconds Timer
scoreboard players operation modulo Timer %= hornInterval Timer
execute if score modulo Timer matches 0 at @e[type=minecraft:zombie,tag=houseMary] run function mc:sounds/mary_horn

# Time Depleted
execute if score seconds Timer matches 0 as @p[team=Playing] run function mc:states/stages/7_scavenge/nuke/manage_nuke