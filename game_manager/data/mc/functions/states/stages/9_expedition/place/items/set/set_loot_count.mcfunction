# Loot (Base)
  # Short (1 to 5, n+1)
  execute if score mapVisited MenuExplore matches 1..4 run scoreboard players set math_in1 em 1
  execute if score mapVisited MenuExplore matches 1..4 run scoreboard players set math_in2 em 6
  # Medium (2 to 6, n+1)
  execute if score mapVisited MenuExplore matches 5..6 run scoreboard players set math_in1 em 2
  execute if score mapVisited MenuExplore matches 5..6 run scoreboard players set math_in2 em 7
  # Long (3 to 7, n+1)
  execute if score mapVisited MenuExplore matches 7..8 run scoreboard players set math_in1 em 3
  execute if score mapVisited MenuExplore matches 7..8 run scoreboard players set math_in2 em 8
  # Copy Output
  function em:math/randomp
  scoreboard players operation maxLoot ItemsExpedition = math_out em
  scoreboard players set math_out em 0

# Boost Loot
  # Item Boost (1 in x, n+1)
  scoreboard players operation memory em = ITEM_BOOST StatusOdds
  execute if score gearCount ItemsExpedition matches 4 run scoreboard players add maxLoot ItemsExpedition 1
  execute if score gearCount ItemsExpedition matches 1..3 run function em:math/get_percentage
  execute if score gearCount ItemsExpedition matches 1 if score math_out em matches 1 run scoreboard players add maxLoot ItemsExpedition 1
  execute if score gearCount ItemsExpedition matches 2 if score math_out em matches 1..2 run scoreboard players add maxLoot ItemsExpedition 1
  execute if score gearCount ItemsExpedition matches 3 if score math_out em matches 1..3 run scoreboard players add maxLoot ItemsExpedition 1
  # Supply Drop (1 in x, n+1)
  scoreboard players operation memory em = SUPPLY_BOOST StatusOdds
  function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players add maxLoot ItemsExpedition 4
  # Timmy Skills (1 in x, n+1)
  scoreboard players operation memory em = TIMMY_BOOST StatusOdds
  execute if score characterSent MenuExplore matches 5 run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players add maxLoot ItemsExpedition 1
  
# Nerf Loot
  # Fatigue (1 in x, n+1)
  scoreboard players operation memory em = FATIGUE_PENALTY StatusOdds
  execute if score isFatigued ItemsExpedition matches 1 run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players remove maxLoot ItemsExpedition 1

# Keep In Range
execute if score maxLoot ItemsExpedition matches ..-1 run scoreboard players set maxLoot ItemsExpedition 0

# Set Stage
scoreboard players add stage ItemsExpedition 1
schedule function mc:states/stages/9_expedition/place/manage_placement 1t replace