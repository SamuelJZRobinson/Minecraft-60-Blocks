# Notes
  # Do not nest math x and y in a path to ensure compatability with macros.

# Atomic Drill
data remove storage minecraft:atomicdrill dialogue

# Check Items
data remove storage minecraft:scavenge savedItemIds
data remove storage minecraft:scavenge randomId
data remove storage minecraft:scavenge slotOneFree
data remove storage minecraft:scavenge slotTwoFree
data remove storage minecraft:scavenge slotThreeFree

# Templates
data modify storage tempitem Items set value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:0}}
data modify storage bundletemplate Item set value {Slot:0b,Count:1b,tag:{selection:0,display:{Name:'{"text":"#"}'},page:0,isMenu:1b},id:"minecraft:bundle"}

# Scavenge
data remove storage minecraft:bundles bunkerItems
data remove storage minecraft:bundles suitcaseItems

# Character
data remove storage minecraft:bundles crazyLostItems
data remove storage minecraft:bundles familyLostItems

# Events
data remove storage minecraft:bundles eventItems
data remove storage minecraft:bundles eventLostItems

# Expedition
data remove storage minecraft:bundles expeditionGearId
data remove storage minecraft:bundles expeditionLootItems
data remove storage minecraft:bundles expeditionLostItems

# Math
data remove storage minecraft:math x
data remove storage minecraft:math y