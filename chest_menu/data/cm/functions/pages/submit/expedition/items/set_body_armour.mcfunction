# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 18

# Set Scores
scoreboard players set hasBodyArmour ItemsExpedition 1
scoreboard players set bodyArmour ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1