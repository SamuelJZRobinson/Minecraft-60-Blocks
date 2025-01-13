# Select Random Room
execute store result score room ItemsHouse run random value 1..7

# Add Item To Room
execute if score room ItemsHouse matches 1 run scoreboard players add hallway ItemsHouse 1
execute if score room ItemsHouse matches 2 run scoreboard players add bathroom ItemsHouse 1
execute if score room ItemsHouse matches 3 run scoreboard players add kidsBedroom ItemsHouse 1
execute if score room ItemsHouse matches 4 run scoreboard players add kitchen ItemsHouse 1
execute if score room ItemsHouse matches 5 run scoreboard players add lounge ItemsHouse 1
execute if score room ItemsHouse matches 6 run scoreboard players add masterBedroom ItemsHouse 1
execute if score room ItemsHouse matches 7 run scoreboard players add sideBathroom ItemsHouse 1

# Decrement Score
scoreboard players remove remainder ItemsHouse 1

# Loop
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup/place/items/set/set_room_count_remainder_all