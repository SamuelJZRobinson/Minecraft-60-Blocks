# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 7

# Set Scores
scoreboard players set hasFlashlight ItemsExpedition 1
scoreboard players set flashlight ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1