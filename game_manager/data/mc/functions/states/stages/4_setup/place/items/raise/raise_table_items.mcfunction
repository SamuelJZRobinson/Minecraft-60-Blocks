# Notes
  # <room>Tables are the spaces where <room>TableItems are placed

# Update room
execute if score room ItemsHouseHigh matches 1 if score bathroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 2 if score hallwayTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 3 if score kidsBedroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 4 if score kitchenTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 5 if score loungeTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 6 if score masterBedroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 7 if score sideBathroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1

# Move Items
  # Bathroom
  execute if score room ItemsHouseHigh matches 1 as @e[type=minecraft:slime,limit=1,tag=bathroom,tag=!wallItem,tag=!raised] run function mc:states/stages/4_setup/place/items/raise/raise_table_items_move
  # Hallway
  execute if score room ItemsHouseHigh matches 2 as @e[type=minecraft:slime,limit=1,tag=hallway,tag=!wallItem,tag=!raised] run function mc:states/stages/4_setup/place/items/raise/raise_table_items_move
  # Kids Bedroom
  execute if score room ItemsHouseHigh matches 3 as @e[type=minecraft:slime,limit=1,tag=kidsBedroom,tag=!wallItem,tag=!raised] run function mc:states/stages/4_setup/place/items/raise/raise_table_items_move
  # Kitchen
  execute if score room ItemsHouseHigh matches 4 as @e[type=minecraft:slime,limit=1,tag=kitchen,tag=!wallItem,tag=!raised] run function mc:states/stages/4_setup/place/items/raise/raise_table_items_move
  # Lounge
  execute if score room ItemsHouseHigh matches 5 as @e[type=minecraft:slime,limit=1,tag=lounge,tag=!wallItem,tag=!raised] run function mc:states/stages/4_setup/place/items/raise/raise_table_items_move
  # Master Bedroom
  execute if score room ItemsHouseHigh matches 6 as @e[type=minecraft:slime,limit=1,tag=masterBedroom,tag=!wallItem,tag=!raised] run function mc:states/stages/4_setup/place/items/raise/raise_table_items_move
  # Side Bathroom
  execute if score room ItemsHouseHigh matches 7 as @e[type=minecraft:slime,limit=1,tag=sideBathroom,tag=!wallItem,tag=!raised] run function mc:states/stages/4_setup/place/items/raise/raise_table_items_move

# Adjust Scores
scoreboard players remove sumTableItems ItemsHouseHigh 1

# Call Root
execute if score sumTableItems ItemsHouseHigh matches 0 run function mc:states/stages/4_setup/place/items/refresh_scores
execute if score sumTableItems ItemsHouseHigh matches 1.. run schedule function mc:states/stages/4_setup/place/items/manage_items 1t

# Adjust Items
execute if score sumTableItems ItemsHouseHigh matches 0 run function mc:states/stages/4_setup/place/items/raise/sync_rotation

# Cleanup Leftover Markers
execute if score sumTableItems ItemsHouseHigh matches 0 run kill @e[type=minecraft:marker]

# Declare Loaded
scoreboard players set houseLoaded GameStatus 1

  # Start Exploration Timer
  # execute if score sumTableItems ItemsHouseHigh matches 0 run function mc:timer/exploration/timer_init
  # Adjust Effects
  # execute if score sumTableItems ItemsHouseHigh matches 0 run scoreboard players set blindness GameStatus 3