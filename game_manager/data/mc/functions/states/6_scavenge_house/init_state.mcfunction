# Set Scores
scoreboard players set lockInventory GameStatus 2
scoreboard players set music GameStatus 1

# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b

# Titles
title @a times 10 20 10
title @a title {"text":"Nuke Sighted!","bold":true,"color":"gold"}
title @a subtitle {"text":"Collect Supplies","color":"red"}
playsound minecraft:entity.skeleton_horse.death hostile @a ~ ~ ~ 128 1

tellraw @a "state 7"

# Run Timer
function mc:utility/timer/timer_init