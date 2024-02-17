# Calculate Real Count
  # Soup
  execute if score cans ItemsBunker matches 1.. run function mc:states/stages/8_bunker/decorations/items/count/count_items_soup
  execute if score cans ItemsBunker matches ..0 run scoreboard players set cansInt RealCount 0
  execute if score cans ItemsBunker matches ..0 run scoreboard players set cansFloat RealCount 0
  # Water
  execute if score bottles ItemsBunker matches 1.. run function mc:states/stages/8_bunker/decorations/items/count/count_items_water
  execute if score bottles ItemsBunker matches ..0 run scoreboard players set bottlesInt RealCount 0
  execute if score bottles ItemsBunker matches ..0 run scoreboard players set bottlesFloat RealCount 0

# Count Bunker Items
  # Set Score
  scoreboard players set itemCount ItemsBunker 0
  # Official
  execute if score ammo ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score axe ItemsBunker matches 2 run scoreboard players add itemCount ItemsBunker 1
  execute if score boyScoutHandbook ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score bugSpray ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score cards ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score checkers ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score flashlight ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score gasMask ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score gun ItemsBunker matches 2 run scoreboard players add itemCount ItemsBunker 1
  execute if score harmonica ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score map ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score medkit ItemsBunker matches 2 run scoreboard players add itemCount ItemsBunker 1
  execute if score padlock ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  execute if score radio ItemsBunker matches 1 run scoreboard players add itemCount ItemsBunker 1
  scoreboard players operation itemCount ItemsBunker += cansInt RealCount
  execute if score suitcase ItemsBunker matches 3 run scoreboard players add itemCount ItemsBunker 1
  scoreboard players operation itemCount ItemsBunker += bottlesInt RealCount
  # Custom
  execute if score armour ItemsBunker matches 3 run scoreboard players add itemCount ItemsBunker 1