# Set Dialogue
data modify storage atomicdrill dialogue append value "Timmy is safe, but you need to stock the shelter with soup!"
# Place Soup
execute positioned 19.40 -30.00 13.45 run function mc:states/4_setup/place/items/summon/summon_soup
data modify entity @e[type=slime,tag=soup,limit=1] Invulnerable set value 0b