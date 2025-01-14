tellraw @a "Timmy break item"

# Set Scores
scoreboard players set isCrazyRage TimmyStatus -1

# Preffered Items
execute if score boyScoutHandbook ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 3
execute if score medkit ItemsBunker matches 2 run data modify storage minecraft:itemsprocess randomItemIds append value 12
execute if score padlock ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 13