# Count Array Size
execute store result score randomItemCount ItemsBundles run data get storage minecraft:itemsprocess randomItemIds
# One Array Item
execute if score randomItemCount ItemsBundles matches 1 run data modify storage minecraft:itemsprocess suitcaseGainedItemIds append from storage minecraft:itemsprocess randomItemIds[0]
# Two Or More Array Items
execute if score randomItemCount ItemsBundles matches 2.. run function mc:utility/math/get_random_value_via_amount_score_m1 {"x":0,"score":randomItemCount,"objective":ItemsBundles}
execute if score randomItemCount ItemsBundles matches 2.. run function mc:states/8_bunker/items/process/bonous_item_get_array_index with storage minecraft:math

# Decrement Score
scoreboard players remove suitcaseItemsLeft ItemsBundles 1

# Loop
execute if score suitcaseItemsLeft ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/set_bonous_item