# Set Dialogue
data modify storage minecraft:atomicdrill dialogue append value "Excellent, but without water you'll melt away!"
# Place Water
execute positioned 24.50 -29.00 -7.55 run function gc:states/4_setup/items/summon/summon_water
data modify entity @e[type=slime,tag=water,limit=1] Invulnerable set value 0b