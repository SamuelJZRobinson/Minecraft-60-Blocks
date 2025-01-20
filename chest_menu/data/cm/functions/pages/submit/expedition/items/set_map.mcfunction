# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 11

# Set Scores
scoreboard players set hasMap ItemsExpedition 1
scoreboard players set map ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1