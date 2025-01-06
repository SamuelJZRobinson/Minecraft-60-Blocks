# Set Dialogue
scoreboard players set dialogue AtomicDrill 8
scoreboard players set dialogueMax AtomicDrill 8
# Place Soup
execute positioned 22.40 64.00 6.45 run function mc:states/4_setup/place/items/summon/summon_soup
data modify entity @e[type=slime,tag=soup,limit=1] Invulnerable set value 0b