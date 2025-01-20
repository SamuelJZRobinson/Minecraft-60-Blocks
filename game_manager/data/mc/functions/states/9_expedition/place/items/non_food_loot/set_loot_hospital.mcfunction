# Axe
execute if score map ItemsBunker matches 0 if score hasMap ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 2
# Gas Mask
execute if score gasMask ItemsBunker matches 0 if score hasGasMask ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 8
# Medkit
execute if score medkit ItemsBunker matches 0 if score hasMedkit ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 12
# Body Armour
execute if score map ItemsBunker matches 0 if score hasMap ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 18