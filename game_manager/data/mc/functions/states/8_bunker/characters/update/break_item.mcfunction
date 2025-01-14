# One Array Item
execute if score randomItemCount ItemsBundles matches 1 run data modify storage itemsprocess crazyLostItemIds set from storage minecraft:itemsprocess randomItemIds[0]
# Two Or More Array Items
execute if score randomItemCount ItemsBundles matches 2.. run function mc:utility/math/get_random_value_amt_obj_m1 {"x":0,"score":crazyItemsCount,"objective":ItemsBunker}
execute if score randomItemCount ItemsBundles matches 2.. run function mc:states/8_bunker/characters/update/get_array_index with storage math

# Reset Data
data remove storage itemsprocess randomItemIds