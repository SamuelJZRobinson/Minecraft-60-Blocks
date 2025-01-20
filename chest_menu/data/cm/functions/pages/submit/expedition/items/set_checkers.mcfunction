# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 6

# Set Scores
scoreboard players set hasCheckers ItemsExpedition 1
scoreboard players set checkers ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1