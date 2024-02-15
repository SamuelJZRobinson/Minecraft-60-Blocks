# Set Scores
scoreboard players set lockInventory GameStatus 2
scoreboard players set music GameStatus 1

# Enable Item Damage
execute as @e[team=Item] run data modify entity @s Invulnerable set value 0b

# Title
title @a times 10 20 10
title @a title {"text":"Nuke Sighted!","bold":true,"color":"gold"}
title @a subtitle {"text":"Collect Supplies","color":"red"}
playsound minecraft:entity.skeleton_horse.death hostile @a ~ ~ ~ 128 1

### Exploration Then Scavenge (should probably be 2 states)

# Set Timer
scoreboard players set seconds Timer 60
scoreboard players set alertInterval Timer 0
scoreboard players set hornInterval Timer 9
function mc:utility/timer/engine/timer_init