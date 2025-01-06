# Set Dialogue
data modify storage atomicdrill dialogue append value "Not bad! But you must be in better shape for what lies ahead!"
data modify storage atomicdrill dialogue append value "Time for serious matters, find your son Timmy ASAP!"
data modify storage atomicdrill dialogue append value "Family comes first! Grab the lad, he will visit the cosy shelter first."
# Spawn Timmy
execute positioned 31.50 64.00 -15.50 run function mc:states/4_setup/place/characters/summon/summon_timmy
data modify entity @e[type=zombie,tag=timmy,limit=1] Invulnerable set value 0b