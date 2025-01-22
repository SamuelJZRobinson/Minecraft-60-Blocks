# Cards
execute if score cards ItemsBunker matches 0 if score hasCards ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 5
# Gun
execute if score gun ItemsBunker matches 0 if score hasGun ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 9
# Padlock
execute if score checkers ItemsBunker matches 0 if score hasCheckers ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 13
# Body Armour
execute if score bodyArmour ItemsBunker matches 0 if score hasBodyArmour ItemsExpedition matches 0 run data modify storage minecraft:itemsprocess randomItemIds append value 18