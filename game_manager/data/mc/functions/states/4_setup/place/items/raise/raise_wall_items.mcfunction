# Notes
  # <room>Walls are spaces where <room>WallItems are placed.
  # Wall items will use tables when there is insufficient space.

# Update Room When Wall Items Depleted
  # Bathroom
  execute if score room ItemsHouseHigh matches 1 if score bathroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
  # Hallway
  execute if score room ItemsHouseHigh matches 2 if score hallwayWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
  # Kids Bedroom
  execute if score room ItemsHouseHigh matches 3 if score kidsBedroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
  # Kitchen
  execute if score room ItemsHouseHigh matches 4 if score kitchenWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
  # Lounge
  execute if score room ItemsHouseHigh matches 5 if score loungeWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
  # Master Bedroom
  execute if score room ItemsHouseHigh matches 6 if score masterBedroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
  # Side Bathroom
  execute if score room ItemsHouseHigh matches 7 if score sideBathroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1

# Target Wall Item
  # Bathroom
  execute if score room ItemsHouseHigh matches 1 as @e[type=minecraft:slime,limit=1,tag=bathroom,tag=wallItem,tag=!raised] run function mc:states/4_setup/place/items/raise/raise_wall_items_move
  # Hallway
  execute if score room ItemsHouseHigh matches 2 as @e[type=minecraft:slime,limit=1,tag=hallway,tag=wallItem,tag=!raised] run function mc:states/4_setup/place/items/raise/raise_wall_items_move
  # Kids Bedroom
  execute if score room ItemsHouseHigh matches 3 as @e[type=minecraft:slime,limit=1,tag=kidsBedroom,tag=wallItem,tag=!raised] run function mc:states/4_setup/place/items/raise/raise_wall_items_move
  # Kitchen
  execute if score room ItemsHouseHigh matches 4 as @e[type=minecraft:slime,limit=1,tag=kitchen,tag=wallItem,tag=!raised] run function mc:states/4_setup/place/items/raise/raise_wall_items_move
  # Lounge
  execute if score room ItemsHouseHigh matches 5 as @e[type=minecraft:slime,limit=1,tag=lounge,tag=wallItem,tag=!raised] run function mc:states/4_setup/place/items/raise/raise_wall_items_move
  # Master Bedroom
  execute if score room ItemsHouseHigh matches 6 as @e[type=minecraft:slime,limit=1,tag=masterBedroom,tag=wallItem,tag=!raised] run function mc:states/4_setup/place/items/raise/raise_wall_items_move
  # Side Bathroom
  execute if score room ItemsHouseHigh matches 7 as @e[type=minecraft:slime,limit=1,tag=sideBathroom,tag=wallItem,tag=!raised] run function mc:states/4_setup/place/items/raise/raise_wall_items_move

# Adjust Scores
scoreboard players remove sumWallItems ItemsHouseHigh 1

# Proceed
execute if score sumWallItems ItemsHouseHigh matches 0 run function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t