# Calculate Real Count
  # Soup
  execute if score soups ItemsBunker matches 1.. run function mc:states/8_bunker/items/count/count_soups
  execute if score soups ItemsBunker matches ..0 run scoreboard players set soupsInt RealContainerCount 0
  execute if score soups ItemsBunker matches ..0 run scoreboard players set soupsFloat RealContainerCount 0
  # Water
  execute if score waters ItemsBunker matches 1.. run function mc:states/8_bunker/items/count/count_waters
  execute if score waters ItemsBunker matches ..0 run scoreboard players set watersInt RealContainerCount 0
  execute if score waters ItemsBunker matches ..0 run scoreboard players set watersFloat RealContainerCount 0

# Set Score
scoreboard players set itemCount ItemsBunker 0

# Count Bunker Items
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
  scoreboard players operation itemCount ItemsBunker += soupsInt RealContainerCount
  execute if score suitcase ItemsBunker matches 3 run scoreboard players add itemCount ItemsBunker 1
  scoreboard players operation itemCount ItemsBunker += watersInt RealContainerCount
  # Custom
  execute if score armour ItemsBunker matches 3 run scoreboard players add itemCount ItemsBunker 1