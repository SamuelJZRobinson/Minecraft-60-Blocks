tellraw @a "Ted break item"

# Set Scores
scoreboard players set isCrazyRage TedStatus -1

# Preffered Items
execute if score gasMask ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 8
execute if score map ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 11
execute if score suitcase ItemsBunker matches 3 run data modify storage minecraft:itemsprocess randomItemIds append value 16