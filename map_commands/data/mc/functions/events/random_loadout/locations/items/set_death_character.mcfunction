# Append Bundles
execute if score characterSent ChestMenuExplore matches 1 run data modify storage minecraft:checkitem checkId append value 19
execute if score characterSent ChestMenuExplore matches 2..3 run data modify storage minecraft:checkitem checkId append value 20
execute if score characterSent ChestMenuExplore matches 4 run data modify storage minecraft:checkitem checkId append value 21
execute if score characterSent ChestMenuExplore matches 5 run data modify storage minecraft:checkitem checkId append value 22
scoreboard players set stage CheckItems 5
function mc:status/scavenge/check_item/check_main_remove

# Refresh Score
scoreboard players set characterSent ChestMenuExplore 0