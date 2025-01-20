# Ammo
execute if score ammo ItemsBunker matches 0 if score hasAmmo ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 1
# Boyscout Handbook
execute if score boyScoutHandbook ItemsBunker matches 0 if score hasBugSpray ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 4
# Radio
execute if score radio ItemsBunker matches 0 if score hasRadio ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 14
# Flashlight
execute if score suitcase ItemsBunker matches 0 if score hasSuitcase ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 16