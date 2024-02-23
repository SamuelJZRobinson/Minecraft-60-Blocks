# data modify storage minecraft:math x set value 33
# data modify storage minecraft:math y set value 10

# # Calc
# function mc:utility/math/get_percentage

# # Get Result
# execute store result storage minecraft:math x int 1 run scoreboard players get out Math
# # Y is the same

# # Random
# function mc:utility/math/get_random_range with storage minecraft:math
# # scoreboard players operation x X = out Math



  # Set Dice
  scoreboard players set mode Math 1
  
scoreboard players set bathroomTableItems ItemsHouseHigh 8
scoreboard players set bathroomTables ItemsHouseHigh 6
  
  # Bathroom
    # Set Input
    data modify storage minecraft:math x set value 65
    execute store result storage minecraft:math y int 1 run scoreboard players get bathroomTableItems ItemsHouseHigh
    execute if score bathroomTableItems ItemsHouseHigh > bathroomTables ItemsHouseHigh store result storage minecraft:math y int 1 run scoreboard players get bathroomTables ItemsHouseHigh
    # Calculate
    function mc:utility/math/get_percentage
    execute store result storage minecraft:math x int 1 run scoreboard players get out Math
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation bathroomTableItems ItemsHouseHigh = out Math