# There are 30 items in total.

# Count Total Items
execute store result score itemCount ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=scavengeItem]

# Set Base Item Count
function mc:states/4_setup/place/items/set/set_room_item_count_base

# Sum Remainder
scoreboard players operation remainder ItemsHouse = itemCount ItemsHouse
scoreboard players operation remainder ItemsHouse -= bathroomItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= hallwayItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= kidsBedroomItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= kitchenItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= loungeItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= masterBedroomItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= sideBathroomItemsLeft ItemsHouse

# Allocate Remainder (Hallway Only)
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup/place/items/set/set_room_item_count_hallway

# Allocate Remainder (All Rooms)
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup/place/items/set/set_room_item_count_all

# Soup
function mc:states/4_setup/place/items/set/set_room_soup_count

# Water
function mc:states/4_setup/place/items/set/set_room_water_count

# Proceed
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t