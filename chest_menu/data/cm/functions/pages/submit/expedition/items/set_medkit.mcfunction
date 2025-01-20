# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 12

# Set Scores
scoreboard players set hasMedkit ItemsExpedition 1
scoreboard players set medkit ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1