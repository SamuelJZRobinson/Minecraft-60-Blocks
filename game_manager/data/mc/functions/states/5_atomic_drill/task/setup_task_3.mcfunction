# Set Dialogue
scoreboard players set dialogue AtomicDrill 5
scoreboard players set dialogueMax AtomicDrill 7
# Spawn Timmy
execute positioned 31.50 64.00 -15.50 run function mc:states/4_setup/place/characters/summon/summon_timmy
data modify entity @e[type=zombie,tag=timmy,limit=1] Invulnerable set value 0b