# Update Subway Map
execute if score mapVisited MenuExpedition matches 7 as @p[team=Player,nbt={SelectedItem:{id:"minecraft:filled_map"}}] run function gc:states/9_expedition/items/update/update_items_metro_map
# Flashlight Night Vision
execute as @p[team=Player,nbt={SelectedItem:{components:{"minecraft:custom_data":{itemId:7}}}}] run effect give @s night_vision infinite 0 true
execute as @p[team=Player,nbt=!{SelectedItem:{components:{"minecraft:custom_data":{itemId:7}}}}] run effect clear @s night_vision