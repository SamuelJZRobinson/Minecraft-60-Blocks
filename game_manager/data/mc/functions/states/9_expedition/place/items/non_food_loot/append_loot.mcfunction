# Count Array Length
execute store result score randomItemCount ItemsBundles run data get storage minecraft:itemsprocess randomItemIds
# One Array Item
execute if score randomItemCount ItemsBundles matches 1 run data modify storage minecraft:itemsprocess expeditionGainedItemIds append from storage minecraft:itemsprocess randomItemIds[0]
# Two Or More Array Items
execute if score randomItemCount ItemsBundles matches 2.. run function mc:utility/math/get_random_value_via_amount_score_m1 {"x":0,"score":randomItemCount,"objective":ItemsBundles}
execute if score randomItemCount ItemsBundles matches 2.. run function mc:states/9_expedition/place/items/non_food_loot/get_array_index with storage minecraft:math

# Decrement Loop
scoreboard players remove nonFoodLeft ItemsExpedition 1

# Loop
execute if score nonFoodLeft ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/non_food_loot/append_loot
execute if score nonFoodLeft ItemsExpedition matches 0 run data remove storage minecraft:itemsprocess randomItemIds