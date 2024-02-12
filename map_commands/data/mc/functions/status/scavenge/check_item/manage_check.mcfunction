# Notes
  # stage determines the value of items for each part of the game, including: 1 (plus one), 2 (max), 3 (start game), and 4 (negative one)
  # Using /execute if data storage minecraft:checkitem checkId to detect empty arrays will still return true for empty tags
  # manage_new_day is scheduled to prevent multiple unexpected executions during atomic drill

# Count Items Accordingly
execute if score stage CheckItems matches 1 run function mc:status/scavenge/check_item/check_main_add
execute if score stage CheckItems matches 2 if score difficulty Lobby matches 1..2 run function mc:status/scavenge/check_item/load_bonous_items
execute if score stage CheckItems matches 2 if score difficulty Lobby matches 3 run scoreboard players set stage CheckItems 3
execute if score stage CheckItems matches 3 run schedule function mc:events/daily/manage_new_day 1t replace
execute if score stage CheckItems matches 4 run function mc:status/scavenge/check_item/check_main_remove