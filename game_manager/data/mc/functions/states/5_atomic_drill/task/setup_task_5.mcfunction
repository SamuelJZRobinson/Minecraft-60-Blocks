# Set Dialogue
data modify storage atomicdrill dialogue append value "Excellent, but without water you will melt away! Hunt for some bottles!"
# Place Water
execute positioned 27.50 -29.00 -7.55 run function mc:states/4_setup/place/items/summon/summon_water
data modify entity @e[type=slime,tag=scavengeWater,limit=1] Invulnerable set value 0b