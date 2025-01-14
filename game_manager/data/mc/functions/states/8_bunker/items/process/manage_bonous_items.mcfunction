# Notes
  # Easy has 5 bonous items.
  # Medium has 3 bonous items.
  # Hard has 0 bonous items.

# Clear Data
data remove storage minecraft:itemsprocess suitcaseGainedItemIds

# Set Base Bonous Items
  # Easy
  execute if score difficulty Settings matches 1 run scoreboard players set suitcaseItemsLeft ItemsBundles 3
  # Medium
  execute if score difficulty Settings matches 2 run scoreboard players set suitcaseItemsLeft ItemsBundles 1

# Set Suitcase Bonous Items
  # Easy
  execute if score difficulty Settings matches 1 if score suitcase ItemsBunker matches 3 run scoreboard players add suitcaseItemsLeft ItemsBundles 2
  # Medium
  execute if score difficulty Settings matches 2 if score suitcase ItemsBunker matches 3 run scoreboard players add suitcaseItemsLeft ItemsBundles 1

# Append Unsalvaged Items
  execute if score ammo ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 1
  execute if score axe ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 2
  execute if score boyScoutHandbook ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 3
  execute if score bugSpray ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 4
  execute if score cards ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 5
  execute if score checkers ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 6
  execute if score flashlight ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 7
  execute if score gasMask ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 8
  execute if score gun ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 9
  execute if score harmonica ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 10
  execute if score map ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 11
  execute if score medkit ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 12
  execute if score padlock ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 13
  execute if score radio ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 14
  execute if score suitcase ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 16
  execute if score bodyArmour ItemsBunker matches ..0 run data modify storage minecraft:itemsprocess randomItemIds append value 18
  # Append Mandatory Food
    # Soup
    data modify storage minecraft:itemsprocess randomItemIds append value 15
    data modify storage minecraft:itemsprocess randomItemIds append value 15
    data modify storage minecraft:itemsprocess randomItemIds append value 15
    # Water
    data modify storage minecraft:itemsprocess randomItemIds append value 17
    data modify storage minecraft:itemsprocess randomItemIds append value 17

# Choose Item
function mc:states/8_bunker/items/process/set_bonous_item

# Reset Data
data remove storage minecraft:itemsprocess randomItemIds