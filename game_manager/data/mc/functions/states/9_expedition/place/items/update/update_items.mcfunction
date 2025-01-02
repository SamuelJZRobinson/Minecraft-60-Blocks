# Update Subway Map
execute if score mapVisited MenuExplore matches 7 as @p[team=Player,nbt={SelectedItem:{id:"minecraft:filled_map"}}] run function mc:states/9_expedition/place/items/update/update_items_map
# Flashlight Night Vision
execute unless score characterSent MenuExplore matches 3 as @p[team=Player,nbt={SelectedItem:{tag:{itemId:7}}}] run effect give @s night_vision 20 0 true
execute unless score characterSent MenuExplore matches 3 as @p[team=Player,nbt=!{SelectedItem:{tag:{itemId:7}}}] run effect clear @s night_vision