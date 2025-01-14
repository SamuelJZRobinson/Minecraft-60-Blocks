# Notes
  # Do not nest math x and y in a path to ensure compatability with macros.

# Atomic Drill
data remove storage minecraft:atomicdrill dialogue

# Item Process
  # Processing
  data remove storage minecraft:itemsprocess processItemIds
  # Check Items
  data remove storage minecraft:itemsprocess slotOneFree
  data remove storage minecraft:itemsprocess slotTwoFree
  data remove storage minecraft:itemsprocess slotThreeFree
  # Random
  data remove storage minecraft:itemsprocess randomItemIds
  # Scavenge
  data remove storage minecraft:itemsprocess scavengeGainedItemIds
  data remove storage minecraft:itemsprocess suitcaseGainedItemIds
  # Crazy
  data remove storage minecraft:itemsprocess crazyLostItemIds
  # Characters
  data remove storage minecraft:itemsprocess charactersLostIds

# Bundles
  # Templates
  
  # data modify storage minecraft:bundles itemTemplate set value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:0}}
  # Items
  data remove storage minecraft:bundles itemsGained
  data remove storage minecraft:bundles itemsLost
  # Characters
  data remove storage minecraft:bundles charactersLost


  # Expedition
  # data remove storage minecraft:bundles expeditionGearId






# Math
data remove storage minecraft:math x
data remove storage minecraft:math y