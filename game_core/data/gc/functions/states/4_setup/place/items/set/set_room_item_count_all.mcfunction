# Select Random Room
execute store result score room ItemsHouse run random value 1..7

# Add Item To Room
execute if score room ItemsHouse matches 1 run scoreboard players add hallwayItemsLeft ItemsHouse 1
execute if score room ItemsHouse matches 2 run scoreboard players add bathroomItemsLeft ItemsHouse 1
execute if score room ItemsHouse matches 3 run scoreboard players add kidsBedroomItemsLeft ItemsHouse 1
execute if score room ItemsHouse matches 4 run scoreboard players add kitchenItemsLeft ItemsHouse 1
execute if score room ItemsHouse matches 5 run scoreboard players add loungeItemsLeft ItemsHouse 1
execute if score room ItemsHouse matches 6 run scoreboard players add masterBedroomItemsLeft ItemsHouse 1
execute if score room ItemsHouse matches 7 run scoreboard players add sideBathroomItemsLeft ItemsHouse 1

# Decrement Score
scoreboard players remove remainder ItemsHouse 1

# Loop
execute if score remainder ItemsHouse matches 1.. run function gc:states/4_setup/place/items/set/set_room_item_count_all