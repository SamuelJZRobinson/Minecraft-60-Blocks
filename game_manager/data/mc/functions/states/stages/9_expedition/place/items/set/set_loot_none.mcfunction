# Setup Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 0
scoreboard players set startOne em 1

# Loot Chance
  # No Loot Chance (% in max, n+1)
  scoreboard players operation memory em = NO_LOOT ExpeditionOdds
  function em:math/get_percentage
  # No Items (Skip Calculations)
  execute if score math_out em matches 1 run scoreboard players set stage ItemsExpedition 7
  execute if score math_out em matches 1 run schedule function mc:states/stages/9_expedition/place/manage_placement 1t replace
  # Have Items
  execute unless score math_out em matches 1 run scoreboard players add stage ItemsExpedition 1
  execute unless score math_out em matches 1 run schedule function mc:states/stages/9_expedition/place/manage_placement 1t replace