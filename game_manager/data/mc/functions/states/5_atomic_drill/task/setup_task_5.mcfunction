# Set Dialogue
scoreboard players set dialogue AtomicDrill 9
scoreboard players set dialogueMax AtomicDrill 9
# Place Water
execute positioned 27.50 65.00 -14.55 run function mc:states/4_setup/place/items/summon/summon_water
data modify entity @e[type=slime,tag=scavengeWater,limit=1] Invulnerable set value 0b