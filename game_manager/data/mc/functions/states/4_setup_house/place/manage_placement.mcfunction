# Floorplans
function mc:states/4_setup_house/place/floorplans/manage_floorplans

# Characters
execute unless entity @e[type=minecraft:zombie,tag=houseMary,limit=1] run schedule function mc:states/4_setup_house/place/characters/manage_characters 6t replace

# Items
scoreboard players set stage ItemsHouse 1
schedule function mc:states/4_setup_house/place/items/manage_items 7t replace