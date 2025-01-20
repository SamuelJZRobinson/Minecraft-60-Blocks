# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 10

# Set Scores
scoreboard players set hasHarmonica ItemsExpedition 1
scoreboard players set harmonica ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1