# Reset Scores
scoreboard players set bundleCount ItemsBundles 0

# Reset Data
  # Items
  data remove storage minecraft:bundles itemsGained
  data remove storage minecraft:bundles itemsLost
  # Characters
  data remove storage minecraft:bundles charactersLost

# Get Item Ids (Addition)
  # Settings
  scoreboard players set isAddition ItemsBundles 1
  # Scavenge
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess scavengeGainedItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/get_items_scavenge
  # Suitcase

# Get Item Ids (Subtraction)
  # Settings
  scoreboard players set isAddition ItemsBundles 0
  # Crazy Broken Items
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess crazyLostItemIds
  execute if score bundleCount ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/get_crazy_items_broken
  # Dead
  execute store result score bundleCount ItemsBundles run data get storage minecraft:itemsprocess charactersLostIds
  execute if score bundleCount ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/get_characters

# Clear Data
data remove storage minecraft:itemsprocess scavengeGainedItemIds
data remove storage minecraft:itemsprocess crazyLostItemIds
data remove storage minecraft:itemsprocess charactersLostIds