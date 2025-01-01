# Notes
  # The hallway is omitted since it's a wild card that can have 0 items.

# Select Room
function mc:utility/math/get_random_range {x:1,y:6}
scoreboard players operation room ItemsHouse = out Math

# Add Item To Room
execute if score room ItemsHouse matches 1 run scoreboard players add bathroom ItemsHouse 1
execute if score room ItemsHouse matches 2 run scoreboard players add kidsBedroom ItemsHouse 1
execute if score room ItemsHouse matches 3 run scoreboard players add kitchen ItemsHouse 1
execute if score room ItemsHouse matches 4 run scoreboard players add lounge ItemsHouse 1
execute if score room ItemsHouse matches 5 run scoreboard players add masterBedroom ItemsHouse 1
execute if score room ItemsHouse matches 6 run scoreboard players add sideBathroom ItemsHouse 1

# Adjust Scores
scoreboard players add allocated ItemsHouse 1
scoreboard players remove remainder ItemsHouse 1

# Loop Function If Items Are Owed
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup/place/items/set/set_room_count_fix_leftovers