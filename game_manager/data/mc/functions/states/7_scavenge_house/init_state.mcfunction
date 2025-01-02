# Set Scores
scoreboard players set music GameStatus 1

# Enable Item Damage
execute as @e[team=Items] run data modify entity @s Invulnerable set value 0b

# Titles
title @a times 10t 20t 10t
title @a title {"text":"Nuke Sighted!","bold":true,"color":"gold"}
title @a subtitle {"text":"Collect Supplies","color":"red"}
playsound minecraft:entity.skeleton_horse.death hostile @a ~ ~ ~ 128 1

tellraw @a "state 7"

# Setup Timer
scoreboard players set seconds TimerCountdown 20
scoreboard objectives setdisplay sidebar TimerCountdown
function mc:utility/timers/countdown/tick