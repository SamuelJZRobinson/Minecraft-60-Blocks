# Count Room Item Types
  # Bathroom
  execute store result score bathroomWallItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=bathroom,tag=wallItem]
  execute store result score bathroomTableItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=bathroom,tag=!wallItem]
  # Hallway
  execute store result score hallwayWallItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=hallway,tag=wallItem]
  execute store result score hallwayTableItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=hallway,tag=!wallItem]
  # Kids Bedroom
  execute store result score kidsBedroomWallItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=kidsBedroom,tag=wallItem]
  execute store result score kidsBedroomTableItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=kidsBedroom,tag=!wallItem]
  # Kitchen
  execute store result score kitchenWallItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=kitchen,tag=wallItem]
  execute store result score kitchenTableItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=kitchen,tag=!wallItem]
  # Lounge
  execute store result score loungeWallItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=lounge,tag=wallItem]
  execute store result score loungeTableItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=lounge,tag=!wallItem]
  # Master Bedroom
  execute store result score masterBedroomWallItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=masterBedroom,tag=wallItem]
  execute store result score masterBedroomTableItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=masterBedroom,tag=!wallItem]
  # Side Bathroom
  execute store result score sideBathroomWallItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=sideBathroom,tag=wallItem]
  execute store result score sideBathroomTableItems ItemsHouseHigh if entity @e[type=minecraft:slime,tag=sideBathroom,tag=!wallItem]

# Sum Table Items
scoreboard players set sumTableItems ItemsHouseHigh 0
scoreboard players operation sumTableItems ItemsHouseHigh += bathroomTableItems ItemsHouseHigh
scoreboard players operation sumTableItems ItemsHouseHigh += hallwayTableItems ItemsHouseHigh
scoreboard players operation sumTableItems ItemsHouseHigh += kidsBedroomTableItems ItemsHouseHigh
scoreboard players operation sumTableItems ItemsHouseHigh += kitchenTableItems ItemsHouseHigh
scoreboard players operation sumTableItems ItemsHouseHigh += loungeTableItems ItemsHouseHigh
scoreboard players operation sumTableItems ItemsHouseHigh += masterBedroomTableItems ItemsHouseHigh
scoreboard players operation sumTableItems ItemsHouseHigh += sideBathroomTableItems ItemsHouseHigh

# Sum Wall Items
scoreboard players set sumWallItems ItemsHouseHigh 0
scoreboard players operation sumWallItems ItemsHouseHigh += bathroomWallItems ItemsHouseHigh
scoreboard players operation sumWallItems ItemsHouseHigh += hallwayWallItems ItemsHouseHigh
scoreboard players operation sumWallItems ItemsHouseHigh += kidsBedroomWallItems ItemsHouseHigh
scoreboard players operation sumWallItems ItemsHouseHigh += kitchenWallItems ItemsHouseHigh
scoreboard players operation sumWallItems ItemsHouseHigh += loungeWallItems ItemsHouseHigh
scoreboard players operation sumWallItems ItemsHouseHigh += masterBedroomWallItems ItemsHouseHigh
scoreboard players operation sumWallItems ItemsHouseHigh += sideBathroomWallItems ItemsHouseHigh

# Notes
  # x is the percentage of total items (y) moved from the floor to high places.
  # Reduces table items when space is insufficient.

# Allocate Tables To Room Items
  # Set Dice
  scoreboard players set mode Math 0
  scoreboard players set dynamicDifficulty Math 0
  
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
  # Hallway
    # Set Input
    data modify storage minecraft:math x set value 65
    execute store result storage minecraft:math y int 1 run scoreboard players get hallwayTableItems ItemsHouseHigh
    execute if score hallwayTableItems ItemsHouseHigh > hallwayTables ItemsHouseHigh store result storage minecraft:math y int 1 run scoreboard players get hallwayTables ItemsHouseHigh
    # Calculate
    function mc:utility/math/get_percentage
    execute store result storage minecraft:math x int 1 run scoreboard players get out Math
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation hallwayTableItems ItemsHouseHigh = out Math
  # Kids Bedroom
    # Set Input
    data modify storage minecraft:math x set value 50
    execute store result storage minecraft:math y int 1 run scoreboard players get kidsBedroomTableItems ItemsHouseHigh
    execute if score kidsBedroomTableItems ItemsHouseHigh > kidsBedroomTables ItemsHouseHigh store result storage minecraft:math y int 1 run scoreboard players get kidsBedroomTables ItemsHouseHigh
    # Calculate
    function mc:utility/math/get_percentage
    execute store result storage minecraft:math x int 1 run scoreboard players get out Math
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation kidsBedroomTableItems ItemsHouseHigh = out Math
  # Kitchen
    # Set Input
    data modify storage minecraft:math x set value 80
    execute store result storage minecraft:math y int 1 run scoreboard players get kitchenTableItems ItemsHouseHigh
    execute if score kitchenTableItems ItemsHouseHigh > kitchenTables ItemsHouseHigh store result storage minecraft:math y int 1 run scoreboard players get kitchenTables ItemsHouseHigh
    # Calculate
    function mc:utility/math/get_percentage
    execute store result storage minecraft:math x int 1 run scoreboard players get out Math
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation kitchenTableItems ItemsHouseHigh = out Math
  # Lounge
    # Set Input
    data modify storage minecraft:math x set value 65
    execute store result storage minecraft:math y int 1 run scoreboard players get loungeTableItems ItemsHouseHigh
    execute if score loungeTableItems ItemsHouseHigh > loungeTables ItemsHouseHigh store result storage minecraft:math y int 1 run scoreboard players get loungeTables ItemsHouseHigh
    # Calculate
    function mc:utility/math/get_percentage
    execute store result storage minecraft:math x int 1 run scoreboard players get out Math
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation loungeTableItems ItemsHouseHigh = out Math
  # Master Bedroom
    # Set Input
    data modify storage minecraft:math x set value 80
    execute store result storage minecraft:math y int 1 run scoreboard players get masterBedroomTableItems ItemsHouseHigh
    execute if score masterBedroomTableItems ItemsHouseHigh > masterBedroomTables ItemsHouseHigh store result storage minecraft:math y int 1 run scoreboard players get masterBedroomTables ItemsHouseHigh
    # Calculate
    function mc:utility/math/get_percentage
    execute store result storage minecraft:math x int 1 run scoreboard players get out Math
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation masterBedroomTableItems ItemsHouseHigh = out Math
  # Side Bathroom
    # Set Input
    data modify storage minecraft:math x set value 50
    execute store result storage minecraft:math y int 1 run scoreboard players get sideBathroomTableItems ItemsHouseHigh
    execute if score sideBathroomTableItems ItemsHouseHigh > sideBathroomTables ItemsHouseHigh store result storage minecraft:math y int 1 run scoreboard players get sideBathroomTables ItemsHouseHigh
    # Calculate
    function mc:utility/math/get_percentage
    execute store result storage minecraft:math x int 1 run scoreboard players get out Math
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation sideBathroomTableItems ItemsHouseHigh = out Math

# Call Root
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t replace