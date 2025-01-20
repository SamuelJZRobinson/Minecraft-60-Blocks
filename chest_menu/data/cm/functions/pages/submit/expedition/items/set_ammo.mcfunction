# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 1

# Set Scores
scoreboard players set hasAmmo ItemsExpedition 1
scoreboard players set ammo ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1