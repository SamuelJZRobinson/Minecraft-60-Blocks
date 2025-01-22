# Objective
scoreboard objectives add ItemsBundles dummy {"bold":true,"color":"white","text":"Items Bundles"}
# Settings
scoreboard players set isAddition ItemsBundles 1
scoreboard players set doInstantAdd ItemsBundles 0
scoreboard players set doBundle ItemsBundles 0
scoreboard players set doSpawn ItemsBundles 0
# ID
scoreboard players set itemId ItemsBundles 0
# Counts
scoreboard players set itemsLeft ItemsBundles 0
scoreboard players set bundleCount ItemsBundles 0
scoreboard players set randomItemCount ItemsBundles 0
scoreboard players set suitcaseItemsLeft ItemsBundles 0

# Data
  # Processing
  data remove storage minecraft:itemsprocess processItemIds
  data remove storage minecraft:itemsprocess randomItemIds
  # Item ID
  data remove storage minecraft:itemsprocess scavengeGainedItemIds
  data remove storage minecraft:itemsprocess suitcaseGainedItemIds
  data remove storage minecraft:itemsprocess crazyLostItemIds
  data remove storage minecraft:itemsprocess expeditionGainedItemIds
  data remove storage minecraft:itemsprocess expeditionTakenItemIds
  data remove storage minecraft:itemsprocess expeditionLostItemIds
  # Character ID
  data remove storage minecraft:itemsprocess charactersGainedIds
  data remove storage minecraft:itemsprocess charactersMovedIds
  data remove storage minecraft:itemsprocess charactersLostIds

  # Bundles
    # Items
    data remove storage minecraft:bundles itemsGained
    data remove storage minecraft:bundles itemsLost
    # Characters
    data remove storage minecraft:bundles charactersGained
    data remove storage minecraft:bundles charactersLost