# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 16

# Set Scores
scoreboard players set hasSuitcase ItemsExpedition 1
scoreboard players set suitcase ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1