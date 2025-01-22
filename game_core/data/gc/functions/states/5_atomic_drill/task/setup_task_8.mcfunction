# Set Dialogue
data modify storage atomicdrill dialogue append value "Take a gas mask to avoid deadly fallout radiation."
# Place Gas Mask
execute positioned 25.50 -27.50 3.75 run function gc:states/4_setup/items/summon/summon_gas_mask
execute as @e[type=minecraft:slime,tag=gasMask,limit=1] at @s run teleport @s ~ ~ ~ -180 0
function gc:states/4_setup/items/raise/sync_rotation
data modify entity @e[type=slime,tag=gasMask,limit=1] Invulnerable set value 0b