# Set Dialogue
scoreboard players set dialogue AtomicDrill 12
scoreboard players set dialogueMax AtomicDrill 12
# Place Radio
execute positioned 19.30 65.00 6.45 run function mc:states/4_setup/place/items/summon/summon_radio
execute as @e[type=minecraft:slime,tag=radio,limit=1] at @s run teleport @s ~ ~ ~ 90 0
function mc:states/4_setup/place/items/raise/sync_rotation
data modify entity @e[type=slime,tag=radio,limit=1] Invulnerable set value 0b