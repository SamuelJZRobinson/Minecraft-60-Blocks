# Notes
  # item duplication occurs when scheduling the loop functions

# Count Array
execute store result score itemsTotal CheckItems run data get storage minecraft:checkitem checkId

# Copy First Array Value
execute store result score itemId CheckItems run data get storage minecraft:checkitem checkId[0]

# Items
  # Official
  execute if score itemId CheckItems matches 1 run scoreboard players set ammo ItemsBunker 1
  execute if score itemId CheckItems matches 3 run scoreboard players set boyScoutHandbook ItemsBunker 1
  execute if score itemId CheckItems matches 4 run scoreboard players set bugSpray ItemsBunker 1
  execute if score itemId CheckItems matches 5 run scoreboard players set cards ItemsBunker 1
  execute if score itemId CheckItems matches 6 run scoreboard players set checkers ItemsBunker 1
  execute if score itemId CheckItems matches 7 run scoreboard players set flashlight ItemsBunker 1
  execute if score itemId CheckItems matches 8 run scoreboard players set gasMask ItemsBunker 1
  execute if score itemId CheckItems matches 10 run scoreboard players set harmonica ItemsBunker 1
  execute if score itemId CheckItems matches 11 run scoreboard players set map ItemsBunker 1
  execute if score itemId CheckItems matches 13 run scoreboard players set padlock ItemsBunker 1
  execute if score itemId CheckItems matches 14 run scoreboard players set radio ItemsBunker 1
  execute if score itemId CheckItems matches 15 run scoreboard players add cans ItemsBunker 4
  execute if score itemId CheckItems matches 17 run scoreboard players add bottles ItemsBunker 4
  # Check Many Or Single Items
  execute if score stage CheckItems matches 1 run function mc:status/scavenge/check_item/check_main_add_many
  execute if score stage CheckItems matches 2 run function mc:status/scavenge/check_item/check_main_add_one
  execute if score stage CheckItems matches 6 run function mc:status/scavenge/check_item/check_main_add_one
  execute if score stage CheckItems matches 8..9 run function mc:status/scavenge/check_item/check_main_add_one

# Append Bundles
execute if score stage CheckItems matches 2 if score difficulty Lobby matches 1..2 if score itemsTotal CheckItems matches ..5 run function mc:status/scavenge/check_item/set_bundle_bonous
execute if score stage CheckItems matches 6 run function mc:status/scavenge/check_item/set_bundle_expedition_loot
execute if score stage CheckItems matches 8..9 run function mc:status/scavenge/check_item/set_bundle_expedition_loot

# Erase Array Value
data remove storage minecraft:checkitem checkId[0]
execute store result score itemsTotal CheckItems run data get storage minecraft:checkitem checkId

# Loop If Values Exist
execute if score itemsTotal CheckItems matches 1.. run function mc:status/scavenge/check_item/check_main_add
execute if score stage CheckItems matches 1 if score itemsTotal CheckItems matches 0 run function mc:status/scavenge/check_item/check_valid
execute if score stage CheckItems matches 2 if score itemsTotal CheckItems matches 0 run scoreboard players set stage CheckItems 3
execute if score stage CheckItems matches 2 if score itemsTotal CheckItems matches 0 run function mc:status/scavenge/check_item/manage_check
execute if score stage CheckItems matches 6 if score itemsTotal CheckItems matches 0 run function mc:events/random_loadout/locations/items/get_slot_random
execute if score stage CheckItems matches 8 if score itemsTotal CheckItems matches 0 if score expeditionMode Lobby matches 0 run schedule function mc:status/scavenge/check_item/set_bundle_details 1t replace
execute if score stage CheckItems matches 8 if score itemsTotal CheckItems matches 0 if score expeditionMode Lobby matches 0 unless score task AtomicDrill matches 16 run scoreboard players set characterSent ChestMenuExplore 0
execute if score stage CheckItems matches 8 if score itemsTotal CheckItems matches 0 if score expeditionMode Lobby matches 1 run schedule function mc:events/random_loadout/locations/items/manage_items 1t replace