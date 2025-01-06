# Set Dialogue
scoreboard players set dialogue AtomicDrill 13
scoreboard players set dialogueMax AtomicDrill 13
# Place Gas Mask
execute positioned 28.50 66.50 -3.25 run function mc:states/4_setup/place/items/summon/summon_gas_mask
execute as @e[type=minecraft:slime,tag=gasMask,limit=1] at @s run teleport @s ~ ~ ~ -180 0
function mc:states/4_setup/place/items/raise/sync_rotation
data modify entity @e[type=slime,tag=gasMask,limit=1] Invulnerable set value 0b