# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 2

# Set Scores
scoreboard players set hasAxe ItemsExpedition 1
scoreboard players set axe ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1