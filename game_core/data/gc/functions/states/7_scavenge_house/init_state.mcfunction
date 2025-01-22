tellraw @a "state 7"

# Set Scores
scoreboard players set music GameStatus 1

# Make Items Collectable
execute as @e[type=slime,tag=scavengeItem] run data modify entity @s Invulnerable set value 0b
execute as @e[type=zombie,tag=character] run data modify entity @s Invulnerable set value 0b

# Titles
title @a times 10t 20t 10t
title @a title {"text":"Nuke Sighted!","bold":true,"color":"gold"}
title @a subtitle {"text":"Collect Supplies","color":"red"}
playsound minecraft:entity.skeleton_horse.death hostile @a ~ ~ ~ 128 1

# Setup Timer
scoreboard players set seconds TimerCountdown 60
scoreboard objectives setdisplay sidebar TimerCountdown
function gc:utility/timers/countdown/tick