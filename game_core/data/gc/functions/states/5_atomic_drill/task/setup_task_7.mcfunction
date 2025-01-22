# Set Dialogue
data modify storage atomicdrill dialogue append value "Take a radio to stay informed about world events."
# Place Radio
execute positioned 16.30 -29.00 13.45 run function gc:states/4_setup/items/summon/summon_radio
execute as @e[type=minecraft:slime,tag=radio,limit=1] at @s run teleport @s ~ ~ ~ 90 0
function gc:states/4_setup/items/raise/sync_rotation
data modify entity @e[type=slime,tag=radio,limit=1] Invulnerable set value 0b