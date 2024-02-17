# Notes
  # Easy and hard modes were swapped to check a range of values appropriate to the difficulty

# Setup Dice
execute if score difficulty Settings matches 1 run scoreboard players set mode em 3
execute if score difficulty Settings matches 2 run scoreboard players set mode em 1
execute if score difficulty Settings matches 3 run scoreboard players set mode em 2
scoreboard players set dynamicDifficulty em 1
scoreboard players set notRandom em 1
scoreboard players set startOne em 0

# Adjust Scores
scoreboard players operation memory em = GEAR_BREAK ExpeditionOdds
function em:math/get_percentage

# Break Chance (<= amount in 10, n+1)
scoreboard players operation memory em = math_out em
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 11
function em:math/randomp
execute if score math_out em <= memory em run function mc:events/random_loadout/locations/items/load_gear_break
execute if score math_out em > memory em run scoreboard players set stage CheckItems 9
execute if score math_out em > memory em run data modify storage minecraft:checkitem checkId set from storage minecraft:bundles expeditionGearId
execute if score math_out em > memory em run function mc:status/scavenge/check_item/check_main_add
scoreboard players set math_out em 0