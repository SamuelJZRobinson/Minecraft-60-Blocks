# Set Dialogue
data modify storage atomicdrill dialogue append value "Not bad! But you must be in better shape for what's ahead!"
data modify storage atomicdrill dialogue append value "Family comes first! Grab your son Timmy ASAP!"
# Spawn Timmy
execute positioned 28.50 -30.00 -8.50 run function gc:states/4_setup/characters/summon/summon_timmy
data modify entity @e[type=zombie,tag=timmy,limit=1] Invulnerable set value 0b