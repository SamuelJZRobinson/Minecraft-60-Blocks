# Setup Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 2
scoreboard players set startOne em 0

# Initial Range
scoreboard players set math_in1 em 40
scoreboard players set math_in2 em 60
function em:math/randomp
# Get Percentage
scoreboard players operation memory em = sustenanceCount ItemsExpedition
scoreboard players operation math_in1 em = math_out em
function em:math/get_percentage
scoreboard players operation soupCount ItemsExpedition = math_out em
scoreboard players operation waterCount ItemsExpedition = sustenanceCount ItemsExpedition
scoreboard players operation waterCount ItemsExpedition -= soupCount ItemsExpedition

# Append Sustenance
scoreboard players set stage CheckItems 8
scoreboard players set loadItem ItemsExpedition 1
function mc:events/random_loadout/locations/items/get_sustenance