# Update Subway Map
execute if score locationVisited ChestMenuExplore matches 7 as @p[team=Playing,nbt={SelectedItem:{id:"minecraft:filled_map"}}] run function mc:timers/expedition/update_map_check
# Flashlight Night Vision
execute unless score characterSent ChestMenuExplore matches 3 as @p[team=Playing,nbt={SelectedItem:{tag:{itemId:7}}}] run effect give @s night_vision 20 0 true
execute unless score characterSent ChestMenuExplore matches 3 as @p[team=Playing,nbt=!{SelectedItem:{tag:{itemId:7}}}] run effect clear @s night_vision