# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 9

# Set Scores
scoreboard players set hasGun ItemsExpedition 1
scoreboard players set gun ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1