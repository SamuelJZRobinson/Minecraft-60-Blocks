# Set Data
data modify storage minecraft:itemsprocess expeditionLostItemIds append value 3

# Set Scores
scoreboard players set hasBoyScoutHandbook ItemsExpedition 1
scoreboard players set boyScoutHandbook ItemsBunker 0

# Increment Count
scoreboard players add itemCount ItemsExpedition 1