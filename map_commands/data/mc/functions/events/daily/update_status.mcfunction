# Chest Menu Related
function cm:menu/place_chest_menu
execute if score day GameStatus matches 2 run scoreboard players set expeditionPrepared ChestMenuExplore 0

# Item And Character Related
execute if score day GameStatus matches 1..7 unless score characterRevived GameStatus matches 1.. run function mc:events/daily/revive_chance
schedule function mc:status/manage_decorations 1t replace
schedule function mc:status/scavenge/check_item/set_bundle_details 11t replace

# Request Random Event