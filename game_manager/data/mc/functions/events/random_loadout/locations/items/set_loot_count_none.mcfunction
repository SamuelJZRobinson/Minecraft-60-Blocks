# Setup Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 0
scoreboard players set startOne em 1

# Loot Chance
  # Roll Dice (% in max, n+1)
  scoreboard players operation memory em = NO_LOOT ExpeditionOdds
  function em:math/get_percentage
  # Success
  execute unless score math_out em matches 1 run function mc:events/random_loadout/locations/items/set_loot_count_items
  # Fail
  execute if score math_out em matches 1 run scoreboard players set stage ItemsExpedition 6
  execute if score math_out em matches 1 run schedule function mc:events/random_loadout/locations/items/manage_items 1t
  scoreboard players set math_out em 0