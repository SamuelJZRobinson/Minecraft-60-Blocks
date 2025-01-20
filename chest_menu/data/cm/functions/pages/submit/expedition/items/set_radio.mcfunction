# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 14

# Set Scores
scoreboard players set hasRadio ItemsExpedition 1
scoreboard players set radio ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1