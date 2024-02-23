# Set Dice
scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 0

# Sustenance And Special
  # Sustenance
    # Set Input
    data modify storage minecraft:math x set value 30
    execute store result storage minecraft:math y int 1 run scoreboard players get maxLoot ItemsExpedition
    # Calculate
    function mc:utility/math/get_percentage
    # Store
    scoreboard players operation sustenanceCount ItemsExpedition = out Math
    # Special (Leftover)
    scoreboard players operation specialCount ItemsExpedition = maxLoot ItemsExpedition
    scoreboard players operation specialCount ItemsExpedition -= sustenanceCount ItemsExpedition

# Supress Special
  # Get Amount
    # Set Input
    data modify storage minecraft:math x set value 1
    execute store result storage minecraft:math y int 1 run scoreboard players get specialCount ItemsExpedition
    # Calculate
    function mc:utility/math/get_random_range with storage minecraft:math
    # Store
    scoreboard players operation specialRemove ItemsExpedition = out Math
    # Adjsut Scores
    scoreboard players operation specialCount ItemsExpedition -= specialRemove ItemsExpedition
    scoreboard players operation sustenanceCount ItemsExpedition += specialRemove ItemsExpedition

# Calculate Item Slots
scoreboard players operation specialCountCopy ItemsExpedition = specialCount ItemsExpedition
execute if score specialCount ItemsExpedition matches 0 run function mc:states/stages/9_expedition/place/items/set/set_loot_slot
execute if score specialCount ItemsExpedition matches 1.. run function mc:states/stages/9_expedition/place/items/set/set_loot_slot_try