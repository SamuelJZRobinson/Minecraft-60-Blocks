# Notes
  # math_in1 determines what percentage of items are moved from the floor and must stay between 1 to 100

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

# Allocate Tables To Room Items
  # Set Mode
  scoreboard players set mode em 1
  scoreboard players set dynamicDifficulty em 0
  scoreboard players set notRandom em 0
  scoreboard players set startOne em 0
  
  # Bathroom
    # Reduce Table Items When Space Is Insufficient
    scoreboard players operation memory em = bathroomTableItems ItemsHouseHigh
    execute if score bathroomTableItems ItemsHouseHigh > bathroomTables ItemsHouseHigh run scoreboard players operation memory em = bathroomTables ItemsHouseHigh
    # Generate Random Number (% to max, n+1)
    scoreboard players set math_in1 em 65
    function em:math/get_percentage
    scoreboard players operation bathroomTableItems ItemsHouseHigh = math_out em

  # Hallway
    # Reduce Table Items When Space Is Insufficient
    scoreboard players operation memory em = hallwayTableItems ItemsHouseHigh
    execute if score hallwayTableItems ItemsHouseHigh > hallwayTables ItemsHouseHigh run scoreboard players operation memory em = hallwayTables ItemsHouseHigh
    # Generate Random Number (% to max, n+1)
    scoreboard players set math_in1 em 65
    function em:math/get_percentage
    scoreboard players operation hallwayTableItems ItemsHouseHigh = math_out em

  # Kids Bedroom
    # Reduce Table Items When Space Is Insufficient
    scoreboard players operation memory em = kidsBedroomTableItems ItemsHouseHigh
    execute if score kidsBedroomTableItems ItemsHouseHigh > kidsBedroomTables ItemsHouseHigh run scoreboard players operation memory em = kidsBedroomTables ItemsHouseHigh
    # Generate Random Number (% to max, n+1)
    scoreboard players set math_in1 em 50
    function em:math/get_percentage
    scoreboard players operation kidsBedroomTableItems ItemsHouseHigh = math_out em

  # Kitchen
    # Reduce Table Items When Space Is Insufficient
    scoreboard players operation memory em = kitchenTableItems ItemsHouseHigh
    execute if score kitchenTableItems ItemsHouseHigh > kitchenTables ItemsHouseHigh run scoreboard players operation memory em = kitchenTables ItemsHouseHigh
    # Generate Random Number (% to max, n+1)
    scoreboard players set math_in1 em 80
    function em:math/get_percentage
    scoreboard players operation kitchenTableItems ItemsHouseHigh = math_out em

  # Lounge
    # Reduce Table Items When Space Is Insufficient
    scoreboard players operation memory em = loungeTableItems ItemsHouseHigh
    execute if score loungeTableItems ItemsHouseHigh > loungeTables ItemsHouseHigh run scoreboard players operation memory em = loungeTables ItemsHouseHigh
    # Generate Random Number (% to max, n+1)
    scoreboard players set math_in1 em 65
    function em:math/get_percentage
    scoreboard players operation loungeTableItems ItemsHouseHigh = math_out em

  # Master Bedroom
    # Reduce Table Items When Space Is Insufficient
    scoreboard players operation memory em = masterBedroomTableItems ItemsHouseHigh
    execute if score masterBedroomTableItems ItemsHouseHigh > masterBedroomTables ItemsHouseHigh run scoreboard players operation memory em = masterBedroomTables ItemsHouseHigh
    # Generate Random Number (% to max, n+1)
    scoreboard players set math_in1 em 80
    function em:math/get_percentage
    scoreboard players operation masterBedroomTableItems ItemsHouseHigh = math_out em

  # Side Bathroom
    # Reduce Table Items When Space Is Insufficient
    scoreboard players operation memory em = sideBathroomTableItems ItemsHouseHigh
    execute if score sideBathroomTableItems ItemsHouseHigh > sideBathroomTables ItemsHouseHigh run scoreboard players operation memory em = sideBathroomTables ItemsHouseHigh
    # Generate Random Number (% to max, n+1)
    scoreboard players set math_in1 em 50
    function em:math/get_percentage
    scoreboard players operation sideBathroomTableItems ItemsHouseHigh = math_out em

# Call Root
function mc:states/stages/4_setup/place/items/refresh_scores
schedule function mc:states/stages/4_setup/place/items/manage_items 1t replace