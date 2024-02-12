# Notes
  # The hallway is omitted because it is a wild card which can have 0 items

# Randomly Select Room (1 to 6, n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 7
function em:math/randomp
 
# Copy Output
scoreboard players operation room ItemsHouse = math_out em
 
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
execute if score remainder ItemsHouse matches 1.. run function mc:events/random_loadout/house/items/fix_remainder