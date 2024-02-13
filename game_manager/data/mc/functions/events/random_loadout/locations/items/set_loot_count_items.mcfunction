# Calculate Items & Enemies
# Tp Entities
# Assign Entities To Teams
# Start Timer

# Loot (Base)
  # Short (1 to 5, n+1)
  execute if score locationVisited ChestMenuExplore matches 1..4 run scoreboard players set math_in1 em 1
  execute if score locationVisited ChestMenuExplore matches 1..4 run scoreboard players set math_in2 em 6
  # Medium (2 to 6, n+1)
  execute if score locationVisited ChestMenuExplore matches 5..6 run scoreboard players set math_in1 em 2
  execute if score locationVisited ChestMenuExplore matches 5..6 run scoreboard players set math_in2 em 7
  # Long (3 to 7, n+1)
  execute if score locationVisited ChestMenuExplore matches 7..8 run scoreboard players set math_in1 em 3
  execute if score locationVisited ChestMenuExplore matches 7..8 run scoreboard players set math_in2 em 8
  # Copy Output
  function em:math/randomp
  scoreboard players operation maxLoot ItemsExpedition = math_out em
  scoreboard players set math_out em 0

# Loot (Boost)
  # Item Boost (1 in x, n+1)
  # scoreboard players operation memory em = ITEM_BOOST StatusOdds
  # execute if score gearCount ItemsExpedition matches 4 run scoreboard players add maxLoot ItemsExpedition 1
  # execute if score gearCount ItemsExpedition matches 1..3 run function mc:states/stages/5_setup_house/place/items/get_percentage
  # execute if score gearCount ItemsExpedition matches 1 if score math_out em matches 1 run scoreboard players add maxLoot ItemsExpedition 1
  # execute if score gearCount ItemsExpedition matches 2 if score math_out em matches 1..2 run scoreboard players add maxLoot ItemsExpedition 1
  # execute if score gearCount ItemsExpedition matches 3 if score math_out em matches 1..3 run scoreboard players add maxLoot ItemsExpedition 1
  # scoreboard players set math_out em 0
  # Supply (1 in x, n+1)
  scoreboard players operation memory em = SUPPLY_BOOST StatusOdds
  function mc:states/stages/5_setup_house/place/items/get_percentage
  execute if score math_out em matches 1 run scoreboard players add maxLoot ItemsExpedition 4
  scoreboard players set math_out em 0
  # Timmy (1 in x, n+1)
  scoreboard players operation memory em = TIMMY_BOOST StatusOdds
  execute if score characterSent ChestMenuExplore matches 5 run function mc:states/stages/5_setup_house/place/items/get_percentage
  execute if score math_out em matches 1 run scoreboard players add maxLoot ItemsExpedition 1
  scoreboard players set math_out em 0
  # Fatigue (1 in x, n+1)
  scoreboard players operation memory em = FATIGUE_PENALTY StatusOdds
  execute if score isFatigued ItemsExpedition matches 1 run function mc:states/stages/5_setup_house/place/items/get_percentage
  execute if score math_out em matches 1 run scoreboard players remove maxLoot ItemsExpedition 1
  scoreboard players set math_out em 0

# Call Root
scoreboard players add stage ItemsExpedition 1
schedule function mc:events/random_loadout/locations/items/manage_items 1t