# There are 30 items in total.

# Count Total Items
execute store result score itemCount ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=scavengeItem]

# Set Base Item Count
execute store result score bathroom ItemsHouse run random value 2..3
execute store result score hallway ItemsHouse run random value 1..2
execute store result score kidsBedroom ItemsHouse run random value 3..5
execute store result score kitchen ItemsHouse run random value 5..7
execute store result score lounge ItemsHouse run random value 3..5
execute store result score masterBedroom ItemsHouse run random value 3..5
execute store result score sideBathroom ItemsHouse run random value 1..2

# Sum Remainder
scoreboard players operation remainder ItemsHouse = itemCount ItemsHouse
scoreboard players operation remainder ItemsHouse -= bathroom ItemsHouse
scoreboard players operation remainder ItemsHouse -= hallway ItemsHouse
scoreboard players operation remainder ItemsHouse -= kidsBedroom ItemsHouse
scoreboard players operation remainder ItemsHouse -= kitchen ItemsHouse
scoreboard players operation remainder ItemsHouse -= lounge ItemsHouse
scoreboard players operation remainder ItemsHouse -= masterBedroom ItemsHouse
scoreboard players operation remainder ItemsHouse -= sideBathroom ItemsHouse

# Allocate Remainder (Hallway Only)
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup/place/items/set/set_room_item_count_hallway

# Allocate Remainder (All Rooms)
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup/place/items/set/set_room_item_count_all

# Soup
function mc:states/4_setup/place/items/set/set_room_soup_count

# Water
function mc:states/4_setup/place/items/set/set_room_water_count

# Call Root
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t