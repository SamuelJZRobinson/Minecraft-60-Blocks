tellraw @a "Mary break item"

# Set Scores
scoreboard players set isCrazyRage MaryStatus -1

# Preffered Items
execute if score axe ItemsBunker matches 2 run data modify storage minecraft:itemsprocess randomItemIds append value 2
execute if score flashlight ItemsBunker matches 1 run data modify storage minecraft:itemsprocess randomItemIds append value 7
execute if score gun ItemsBunker matches 2 run data modify storage minecraft:itemsprocess randomItemIds append value 9