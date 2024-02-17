# Chest Menu
function cm:menu/place_chest_menu
execute if score day GameStatus matches 2 run scoreboard players set expeditionPrepared ChestMenuExplore 0

# Character Revive
execute if score day GameStatus matches 1..7 unless score characterRevived GameStatus matches 1.. run function mc:states/stages/8_bunker/decorations/characters/revive_chance

# Update
schedule function mc:states/stages/8_bunker/decorations/characters/manage_characters 1t replace
schedule function mc:states/stages/8_bunker/decorations/items/manage_items 8t replace
schedule function mc:status/scavenge/check_item/set_bundle_details 11t replace
schedule function mc:states/stages/8_bunker/daily/remove_blindness 2.5s replace

# Request Random Event