# Radio
execute if score radio ItemsBunker matches ..0 if score hasRadio ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 14
# Gas Mask
execute if score gasMask ItemsBunker matches ..0 if score hasGasMask ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 8
# Medkit
execute if score medkit ItemsBunker matches ..0 if score hasMedkit ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 12
# Suitcase
execute if score suitcase ItemsBunker matches ..0 if score hasSuitcase ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 16