# Notes
  # stage determines the value of items for each part of the game, including: 1 (plus one), 2 (max), 3 (start game), and 4 (negative one)
  # Using /execute if data storage minecraft:scavenge savedItemIds to detect empty arrays will still return true for empty tags
  # manage_day is scheduled to prevent multiple unexpected executions during atomic drill

# Count Items Accordingly
execute if score stage ItemsBundles matches 1 run function mc:states/8_bunker/items/process/bundles/check/check_main_add
# execute if score stage ItemsBundles matches 2 if score difficulty Settings matches 1..2 run function mc:states/8_bunker/items/process/bundles/set/set_bonous_items
# execute if score stage ItemsBundles matches 2 if score difficulty Settings matches 3 run scoreboard players set stage ItemsBundles 3
# execute if score stage ItemsBundles matches 3 run schedule function mc:states/8_bunker/manage_day 1t replace
# execute if score stage ItemsBundles matches 4 run function mc:states/8_bunker/items/process/bundles/check/check_main_remove