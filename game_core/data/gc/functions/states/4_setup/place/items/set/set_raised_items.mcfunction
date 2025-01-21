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
  # Bathroom
  execute store result score bathroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":65,"score":bathroomTableItems,"objective":ItemsHouseHigh}
  execute if score bathroomTableItems ItemsHouseHigh > bathroomTables ItemsHouseHigh store result score bathroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":65,"score":bathroomTables,"objective":ItemsHouseHigh}
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":"bathroomTableItems","objective":"ItemsHouseHigh"}
  # Hallway
  execute store result score hallwayTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":65,"score":hallwayTableItems,"objective":ItemsHouseHigh}
  execute if score hallwayTableItems ItemsHouseHigh > hallwayTables ItemsHouseHigh store result score hallwayTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":65,"score":hallwayTables,"objective":ItemsHouseHigh}
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":"hallwayTableItems","objective":"ItemsHouseHigh"}
  # Kids Bedroom
  execute store result score kidsBedroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":50,"score":kidsBedroomTableItems,"objective":ItemsHouseHigh}
  execute if score kidsBedroomTableItems ItemsHouseHigh > kidsBedroomTables ItemsHouseHigh store result score kidsBedroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":50,"score":kidsBedroomTables,"objective":ItemsHouseHigh}
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":"kidsBedroomTableItems","objective":"ItemsHouseHigh"}
  # Kitchen
  execute store result score kitchenTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":80,"score":kitchenTableItems,"objective":ItemsHouseHigh}
  execute if score kitchenTableItems ItemsHouseHigh > kitchenTables ItemsHouseHigh store result score kitchenTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":80,"score":kitchenTables,"objective":ItemsHouseHigh}
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":"kitchenTableItems","objective":"ItemsHouseHigh"}
  # Lounge
  execute store result score loungeTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":65,"score":loungeTableItems,"objective":ItemsHouseHigh}
  execute if score loungeTableItems ItemsHouseHigh > loungeTables ItemsHouseHigh store result score loungeTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":65,"score":loungeTables,"objective":ItemsHouseHigh}
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":"loungeTableItems","objective":"ItemsHouseHigh"}
  # Master Bedroom
  execute store result score masterBedroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":80,"score":masterBedroomTableItems,"objective":ItemsHouseHigh}
  execute if score masterBedroomTableItems ItemsHouseHigh > masterBedroomTables ItemsHouseHigh store result score masterBedroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":80,"score":masterBedroomTables,"objective":ItemsHouseHigh}
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":"masterBedroomTableItems","objective":"ItemsHouseHigh"}
  # Side Bathroom
  execute store result score sideBathroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":50,"score":sideBathroomTableItems,"objective":ItemsHouseHigh}
  execute if score sideBathroomTableItems ItemsHouseHigh > sideBathroomTables ItemsHouseHigh store result score sideBathroomTableItems ItemsHouseHigh run function gc:utility/math/get_percentage_of_value_via_score {"percentage":50,"score":sideBathroomTables,"objective":ItemsHouseHigh}
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":"sideBathroomTableItems","objective":"ItemsHouseHigh"}

# Proceed
function gc:states/4_setup/place/items/inc_step
schedule function gc:states/4_setup/place/items/manage_items 1t replace