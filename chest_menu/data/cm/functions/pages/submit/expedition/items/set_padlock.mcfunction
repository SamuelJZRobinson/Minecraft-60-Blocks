# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 13

# Set Scores
scoreboard players set hasPadlock ItemsExpedition 1
scoreboard players set padlock ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1