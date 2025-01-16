data modify storage minecraft:itemsprocess expeditionLostItemIds append value 18
scoreboard players set hasBodyArmour ItemsExpedition 1
scoreboard players set bodyArmour ItemsBunker 0

# Insert POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/body_armour_tool