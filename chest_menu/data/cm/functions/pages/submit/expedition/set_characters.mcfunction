# Ted
execute if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess charactersMovedIds append value 21
execute if score characterSent MenuExpedition matches 1 run scoreboard players operation isTired TedStatus = expeditionDuration MenuExpedition
# Dolores
execute if score characterSent MenuExpedition matches 2 run data modify storage minecraft:itemsprocess charactersMovedIds append value 19
execute if score characterSent MenuExpedition matches 2 run scoreboard players operation isTired DoloresStatus = expeditionDuration MenuExpedition
# Mary
execute if score characterSent MenuExpedition matches 3 run data modify storage minecraft:itemsprocess charactersMovedIds append value 20
execute if score characterSent MenuExpedition matches 3 run scoreboard players operation isTired MaryStatus = expeditionDuration MenuExpedition
# Timmy
execute if score characterSent MenuExpedition matches 4 run data modify storage minecraft:itemsprocess charactersMovedIds append value 22
execute if score characterSent MenuExpedition matches 4 run scoreboard players operation isTired TimmyStatus = expeditionDuration MenuExpedition