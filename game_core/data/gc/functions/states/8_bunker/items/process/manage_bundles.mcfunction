# Reset Scores
scoreboard players set isAddition ItemsBundles -1
scoreboard players set bundleCount ItemsBundles 0
scoreboard players set doBundle ItemsBundles 1
scoreboard players set doInstantAdd ItemsBundles 0
scoreboard players set doSpawn ItemsBundles 0
scoreboard players set doDisplayOnly ItemsBundles 0
scoreboard players set doBreak ItemsBundles 0

# Get Item Ids (Addition)
  # Scavenge
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess scavengeGainedItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_scavenge_gained_items
  # Suitcase
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess suitcaseGainedItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_suitcase_gained_items
  # Expedition
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess expeditionGainedItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_expedition_gained_items
  # Characters
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess charactersGainedIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_characters_gained

# Get Item Ids (Subtraction)
  # Crazy Broken Items
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess crazyLostItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_crazy_lost_items
  # Expedition
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess expeditionLostItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_expedition_lost_items
  # Characters
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess charactersLostIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_characters_lost

# Get Item Ids (Subtraction Display)
  # Expedition
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess expeditionTakenItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_expedition_taken_items
  # Dead
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess charactersMovedIds
  execute if score bundleCount ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/get_characters_moved

# Reset Item ID Data
data remove storage minecraft:itemsprocess processItemIds
data remove storage minecraft:itemsprocess scavengeGainedItemIds
data remove storage minecraft:itemsprocess suitcaseGainedItemIds
data remove storage minecraft:itemsprocess crazyLostItemIds
data remove storage minecraft:itemsprocess charactersGainedIds
data remove storage minecraft:itemsprocess charactersMovedIds
data remove storage minecraft:itemsprocess charactersLostIds
data remove storage minecraft:itemsprocess expeditionGainedItemIds
data remove storage minecraft:itemsprocess expeditionTakenItemIds
data remove storage minecraft:itemsprocess expeditionLostItemIds