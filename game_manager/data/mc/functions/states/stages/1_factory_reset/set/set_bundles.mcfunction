# CHECK ITEMS
data remove storage minecraft:checkitem checkId
data remove storage minecraft:checkitem randomId
data remove storage minecraft:checkitem slotOneFree
data remove storage minecraft:checkitem slotTwoFree
data remove storage minecraft:checkitem slotThreeFree

# TEMPLATES
data modify storage tempitem Items set value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:0}}
data modify storage bundletemplate Item set value {Slot:0b,Count:1b,tag:{selection:0,display:{Name:'{"text":"#"}'},page:0,isMenu:1b},id:"minecraft:bundle"}

# SCAVENGE
data remove storage minecraft:bundles bunkerItems
data remove storage minecraft:bundles suitcaseItems

# CHARACTER
data remove storage minecraft:bundles crazyLostItems
data remove storage minecraft:bundles familyLostItems

# EVENTS
data remove storage minecraft:bundles eventItems
data remove storage minecraft:bundles eventLostItems

# EXPEDITION
data remove storage minecraft:bundles expeditionGearId
data remove storage minecraft:bundles expeditionLootItems
data remove storage minecraft:bundles expeditionLostItems