# Get Array Item
execute store result score itemId ItemsBundles run data get storage minecraft:scavenge savedItemIds[0]

# Check Item
execute if score mode ItemsBundles matches 1 run function mc:states/8_bunker/items/process/check/check_item_add
execute if score mode ItemsBundles matches 0 run function mc:states/8_bunker/items/process/check/check_item_remove

# Append Bundles
# execute if score setBundle ItemsBundles matches 1 run function mc:states/8_bunker/items/process/set/set_bundle_bonous

# execute if score stage ItemsBundles matches 2 if score difficulty Settings matches 1..2 if score itemsLeft ItemsBundles matches ..5 run function mc:states/8_bunker/items/process/bundles/set/set_bundle_bonous
# execute if score stage ItemsBundles matches 6 run function mc:states/8_bunker/items/process/bundles/set/set_bundle_expedition_loot
# execute if score stage ItemsBundles matches 8..9 run function mc:states/8_bunker/items/process/bundles/set/set_bundle_expedition_loot

# Erase Array Item
data remove storage minecraft:scavenge savedItemIds[0]

# Loop
execute store result score itemsLeft ItemsBundles run data get storage minecraft:scavenge savedItemIds
execute if score itemsLeft ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/check/check_item
execute if score mode ItemsBundles matches 1 if score itemsLeft ItemsBundles matches ..0 run function mc:states/8_bunker/items/process/check/check_item_add_valid

# Append Bundle
# execute if score stage ItemsBundles matches 4 run function mc:states/8_bunker/items/process/bundles/set/set_bundle_crazy_lost
# execute if score stage ItemsBundles matches 5 run function mc:states/8_bunker/items/process/bundles/set/set_bundle_family_lost
# execute if score stage ItemsBundles matches 7 run function mc:states/8_bunker/items/process/bundles/set/set_bundle_expedition_lost

# Loop If Values Exist
# execute if score itemsLeft ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/bundles/check/check_main_add
# execute if score stage ItemsBundles matches 1 if score itemsLeft ItemsBundles matches 0 run function mc:states/8_bunker/items/process/bundles/check/check_valid
# execute if score stage ItemsBundles matches 2 if score itemsLeft ItemsBundles matches 0 run scoreboard players set stage ItemsBundles 3
# execute if score stage ItemsBundles matches 2 if score itemsLeft ItemsBundles matches 0 run function mc:states/8_bunker/items/process/manage_process
# execute if score stage ItemsBundles matches 6 if score itemsLeft ItemsBundles matches 0 run function mc:states/9_expedition/place/items/get/get_slot_random
# execute if score stage ItemsBundles matches 8 if score itemsLeft ItemsBundles matches 0 if score doPovExpedition Settings matches 0 run schedule function mc:states/8_bunker/items/process/bundles/set/set_bundle_details 1t replace
# execute if score stage ItemsBundles matches 8 if score itemsLeft ItemsBundles matches 0 if score doPovExpedition Settings matches 0 unless score task AtomicDrill matches 16 run scoreboard players set characterSent MenuExplore 0
# execute if score stage ItemsBundles matches 8 if score itemsLeft ItemsBundles matches 0 if score doPovExpedition Settings matches 1 run schedule function mc:states/9_expedition/place/manage_placement 1t replace