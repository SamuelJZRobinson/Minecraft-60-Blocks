# Floorplans
function mc:states/stages/4_setup/place/floorplans/manage_floorplans

# Characters
execute unless entity @e[type=minecraft:zombie,tag=houseMary,limit=1] run schedule function mc:states/stages/4_setup/place/characters/manage_characters 6t replace

# Items
scoreboard players set stage ItemsHouse 1
schedule function mc:states/stages/4_setup/place/items/manage_items 7t replace