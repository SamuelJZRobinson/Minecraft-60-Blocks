# Notes
  # Full slots donate items to lesser slots, once slot one is filled all remaining items are treated as sustenance

# Estimate Slots
scoreboard players set math_in1 em 1
scoreboard players operation math_in2 em = ITEM_TIER ExpeditionOdds
scoreboard players add math_in2 em 1
function em:math/randomp
execute if score math_out em matches 1..3 run scoreboard players add slotOneTry ItemsExpedition 1
execute if score math_out em matches 4..5 run scoreboard players add slotTwoTry ItemsExpedition 1
execute if score math_out em matches 6 run scoreboard players add slotThreeTry ItemsExpedition 1
scoreboard players set math_out em 0

# Decrease Count
execute if score specialCount ItemsExpedition matches 1.. run scoreboard players remove specialCount ItemsExpedition 1

# Call Next
execute if score specialCount ItemsExpedition matches 0 run function mc:events/random_loadout/locations/items/load_loot_slot_free
execute if score specialCount ItemsExpedition matches 0 run function mc:states/stages/9_expedition/place/items/set/loot_slot

# Loop
execute if score specialCount ItemsExpedition matches 1.. run function mc:states/stages/9_expedition/place/items/set/loot_slot_try