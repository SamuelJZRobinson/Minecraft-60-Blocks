tellraw @a "Dolores break item"

# Set Scores
scoreboard players set isCrazyRage DoloresStatus -1

# Preffered Items
execute if score cards ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 5
execute if score checkers ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 6
execute if score radio ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 14