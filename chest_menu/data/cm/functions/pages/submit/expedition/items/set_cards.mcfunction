# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 5

# Set Scores
scoreboard players set hasCards ItemsExpedition 1
scoreboard players set cards ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1