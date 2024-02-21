# Append Bundles
execute if score characterSent MenuExplore matches 1 run data modify storage minecraft:checkitem checkId append value 19
execute if score characterSent MenuExplore matches 2..3 run data modify storage minecraft:checkitem checkId append value 20
execute if score characterSent MenuExplore matches 4 run data modify storage minecraft:checkitem checkId append value 21
execute if score characterSent MenuExplore matches 5 run data modify storage minecraft:checkitem checkId append value 22
scoreboard players set stage CheckItems 5
function mc:utility/scavenge/process/bundles/check/check_main_remove

# Refresh Score
scoreboard players set characterSent MenuExplore 0