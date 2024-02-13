# Adjust Scores
scoreboard players set clock Timer 2
scoreboard players set lockInventory GameStatus 2
scoreboard players set seconds Timer 60
scoreboard players set music GameStatus 1
scoreboard objectives setdisplay sidebar Scavenge
scoreboard players set alertInterval Timer 0
scoreboard players set hornInterval Timer 9
# Play Nuclear Siren
playsound minecraft:entity.skeleton_horse.death hostile @a ~ ~ ~ 128 1
# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b
# Titles
title @a times 10 20 10
title @a title {"text":"Nuke Sighted!","bold":true,"color":"gold"}
title @a subtitle {"text":"Collect Supplies","color":"red"}
# Activate Timer Engine
function mc:timers/engine/timer_loop