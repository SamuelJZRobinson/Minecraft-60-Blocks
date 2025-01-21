# Get Array Item
execute store result score itemId ItemsBundles run data get storage minecraft:itemsprocess processItemIds[0]

# Check Item
execute if score isAddition ItemsBundles matches 1 if score doSpawn ItemsBundles matches 0 run function gc:states/8_bunker/items/process/check_item_add
execute if score isAddition ItemsBundles matches 1 if score doSpawn ItemsBundles matches 1 run function gc:states/8_bunker/items/process/check_item_add_spawn
execute if score isAddition ItemsBundles matches 0 run function gc:states/8_bunker/items/process/check_item_remove

# Delete Array Item
data remove storage minecraft:itemsprocess processItemIds[0]

# Loop
execute store result score itemsLeft ItemsBundles run data get storage minecraft:itemsprocess processItemIds
execute if score itemsLeft ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/check_item
execute if score isAddition ItemsBundles matches 1 if score itemsLeft ItemsBundles matches ..0 run function gc:states/8_bunker/items/process/check_item_add_slots_valid