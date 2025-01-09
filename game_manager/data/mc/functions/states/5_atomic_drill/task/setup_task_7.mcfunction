# Set Dialogue
data modify storage atomicdrill dialogue append value "Nobody knows when the apocalypse ends so find a radio to take with you."
# Place Radio
execute positioned 19.30 -29.00 13.45 run function mc:states/4_setup/place/items/summon/summon_radio
execute as @e[type=minecraft:slime,tag=radio,limit=1] at @s run teleport @s ~ ~ ~ 90 0
function mc:states/4_setup/place/items/raise/sync_rotation
data modify entity @e[type=slime,tag=radio,limit=1] Invulnerable set value 0b