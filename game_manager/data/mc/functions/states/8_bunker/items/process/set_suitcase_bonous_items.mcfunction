# # Notes
#   # There are always five instances of soup and water to ensure the player recieves the maximum amount of bonous items
#   # Hard difficulty has no bonous items

# # Set Items Awarded
#   # Easy
#   execute if score difficulty Settings matches 1 run scoreboard players add itemsOwed ItemsBundles 3
#   execute if score difficulty Settings matches 1 if score suitcase ItemsBunker matches 3 run scoreboard players add itemsOwed ItemsBundles 2
#   # Medium
#   execute if score difficulty Settings matches 2 run scoreboard players add itemsOwed ItemsBundles 1
#   execute if score difficulty Settings matches 2 if score suitcase ItemsBunker matches 3 run scoreboard players add itemsOwed ItemsBundles 1

# # Append Unsalvaged Items
#   # Official
#   execute if score ammo ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 1
#   execute if score axe ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 2
#   execute if score boyScoutHandbook ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 3
#   execute if score bugSpray ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 4
#   execute if score cards ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 5
#   execute if score checkers ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 6
#   execute if score flashlight ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 7
#   execute if score gasMask ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 8
#   execute if score gun ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 9
#   execute if score harmonica ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 10
#   execute if score map ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 11
#   execute if score medkit ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 12
#   execute if score padlock ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 13
#   execute if score radio ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 14
#   data modify storage minecraft:itemsprocess randomItemIds append value 15
#   data modify storage minecraft:itemsprocess randomItemIds append value 15
#   data modify storage minecraft:itemsprocess randomItemIds append value 15
#   execute if score suitcase ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 16
#   data modify storage minecraft:itemsprocess randomItemIds append value 17
#   data modify storage minecraft:itemsprocess randomItemIds append value 17
#   # Custom
#   execute if score bodyArmour ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 18

# # Choose Items
# function mc:states/8_bunker/items/process/bundles/check/check_random