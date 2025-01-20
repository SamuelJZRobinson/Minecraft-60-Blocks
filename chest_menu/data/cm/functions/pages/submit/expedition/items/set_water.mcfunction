# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 17

# Set Scores
scoreboard players set hasWater ItemsExpedition 1
scoreboard players remove waters ItemsBunker 4

# Increment Count
scoreboard players add itemCount ItemsExpedition 1