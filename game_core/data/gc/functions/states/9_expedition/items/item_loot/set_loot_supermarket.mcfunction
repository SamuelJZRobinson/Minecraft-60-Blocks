# Bugspray
execute if score bugSpray ItemsBunker matches ..0 if score hasBugSpray ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 4
# Map
execute if score map ItemsBunker matches ..0 if score hasMap ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 11
# Radio
execute if score radio ItemsBunker matches ..0 if score hasRadio ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 14
# Flashlight
execute if score suitcase ItemsBunker matches ..0 if score hasSuitcase ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 16