# Notes
  # Easy and hard modes were swapped to modify the range size according to the difficulty

# Setup Dice
execute if score difficulty Settings matches 1 run scoreboard players set mode em 3
execute if score difficulty Settings matches 2 run scoreboard players set mode em 1
execute if score difficulty Settings matches 3 run scoreboard players set mode em 2
scoreboard players set dynamicDifficulty em 1
scoreboard players set notRandom em 1
scoreboard players set startOne em 0

# Refresh Scores
scoreboard players set deathChance ItemsExpedition 0

# Get Chance
  # Character Health
  execute if score characterSent MenuExplore matches 1 run function mc:events/random_loadout/locations/items/check_dolores_health
  execute if score characterSent MenuExplore matches 2 run function mc:events/random_loadout/locations/items/check_mary_health
  # Mutant Mary is immune to status effects
  execute if score characterSent MenuExplore matches 4 run function mc:events/random_loadout/locations/items/check_ted_health
  execute if score characterSent MenuExplore matches 5 run function mc:events/random_loadout/locations/items/check_timmy_health
  # General
  execute if score characterSent MenuExplore matches 1..5 unless score characterSent MenuExplore matches 3 run function mc:events/random_loadout/locations/items/get_general_health

# Modify Chance According To Difficulty
scoreboard players operation memory em = deathChance ItemsExpedition
function em:math/get_percentage

# Roll Dice (n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 101
function em:math/randomp
execute unless score math_out em matches 0 if score math_out em <= memory em run function mc:events/random_loadout/locations/items/set_death_character
execute if score math_out em matches 0 run scoreboard players add stage ItemsExpedition 1
execute unless score math_out em matches 0 if score math_out em > memory em run scoreboard players add stage ItemsExpedition 1
execute if score math_out em matches 0 run function mc:events/random_loadout/locations/items/manage_items
execute unless score math_out em matches 0 if score math_out em > memory em run function mc:events/random_loadout/locations/items/manage_items
scoreboard players set math_out em 0