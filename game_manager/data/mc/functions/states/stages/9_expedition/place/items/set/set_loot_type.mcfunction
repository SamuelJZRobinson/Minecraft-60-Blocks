# Setup Dice
scoreboard players set mode em 3
scoreboard players set dynamicDifficulty em 0
scoreboard players set notRandom em 1
scoreboard players set startOne em 1

# Sustenance And Special
  # Sustenance (Mode, n+1)
  scoreboard players operation memory em = maxLoot ItemsExpedition
  scoreboard players set math_in1 em 30
  function em:math/get_percentage
  scoreboard players operation sustenanceCount ItemsExpedition = math_out em
  scoreboard players set math_out em 0
  # Special (Leftover)
  scoreboard players operation specialCount ItemsExpedition = maxLoot ItemsExpedition
  scoreboard players operation specialCount ItemsExpedition -= sustenanceCount ItemsExpedition

# Supress Special
  # Get Amount (1 in max, n+1)
  scoreboard players set math_in1 em 0
  scoreboard players operation math_in2 em = specialCount ItemsExpedition
  scoreboard players add math_in2 em 1
  function em:math/randomp
  scoreboard players operation specialRemove ItemsExpedition = math_out em
  scoreboard players set math_out em 0
  # Adjsut Scores
  scoreboard players operation specialCount ItemsExpedition -= specialRemove ItemsExpedition
  scoreboard players operation sustenanceCount ItemsExpedition += specialRemove ItemsExpedition

# Calculate Item Slots
scoreboard players operation specialCountCopy ItemsExpedition = specialCount ItemsExpedition
execute if score specialCount ItemsExpedition matches 0 run function mc:states/stages/9_expedition/place/items/set/set_loot_slot
execute if score specialCount ItemsExpedition matches 1.. run function mc:states/stages/9_expedition/place/items/set/set_loot_slot_try