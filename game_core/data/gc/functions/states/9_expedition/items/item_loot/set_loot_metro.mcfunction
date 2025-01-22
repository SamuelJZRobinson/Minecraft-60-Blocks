# Bugspray
execute if score bugSpray ItemsBunker matches ..0 if score hasBugSpray ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 4
# Gas Mask
execute if score gasMask ItemsBunker matches ..0 if score hasGasMask ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 8
# Map
execute if score map ItemsBunker matches ..0 if score hasMap ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 11
# Suitcase
execute if score suitcase ItemsBunker matches ..0 if score hasSuitcase ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 16