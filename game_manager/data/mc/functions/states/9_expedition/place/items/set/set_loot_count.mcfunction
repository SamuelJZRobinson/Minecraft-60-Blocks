# Loot (Base)
  # Short
  execute if score mapVisited MenuExplore matches 1..4 run function mc:utility/math/get_random_value {x:1,y:5}
  # Medium
  execute if score mapVisited MenuExplore matches 5..6 run function mc:utility/math/get_random_value {x:2,y:6}
  # Long
  execute if score mapVisited MenuExplore matches 7..8 run function mc:utility/math/get_random_value {x:3,y:7}
  # Copy Output
  scoreboard players operation maxLoot ItemsExpedition = out Math

# Boost Loot
  # Supply Drop
    # Set Input
    data modify storage minecraft:math x set value 1
    execute store result storage minecraft:math y int 1 run scoreboard players get SUPPLY_BOOST StatusOdds
    # Calculate
    function mc:utility/math/get_random_value with storage minecraft:math
    # Test
    execute if score out Math matches 1 run scoreboard players add maxLoot ItemsExpedition 4
  # Timmy Skills
    # Set Input
    execute if score characterSent MenuExplore matches 5 run data modify storage minecraft:math x set value 1
    execute if score characterSent MenuExplore matches 5 store result storage minecraft:math y int 1 run scoreboard players get TIMMY_BOOST StatusOdds
    # Calculate
    execute if score characterSent MenuExplore matches 5 run function mc:utility/math/get_random_value with storage minecraft:math
    # Test
    execute if score characterSent MenuExplore matches 5 if score out Math matches 1 run scoreboard players add maxLoot ItemsExpedition 1

# Nerf Loot
  # Fatigue
    # Set Input
    execute if score isFatigued ItemsExpedition matches 1 run data modify storage minecraft:math x set value 1
    execute if score isFatigued ItemsExpedition matches 1 store result storage minecraft:math y int 1 run scoreboard players get FATIGUE_PENALTY StatusOdds
    # Calculate
    execute if score isFatigued ItemsExpedition matches 1 run function mc:utility/math/get_random_value with storage minecraft:math
    # Test
    execute if score isFatigued ItemsExpedition matches 1 if score out Math matches 1 run scoreboard players remove maxLoot ItemsExpedition 1

# Keep In Range
execute if score maxLoot ItemsExpedition matches ..-1 run scoreboard players set maxLoot ItemsExpedition 0

# Set Stage
scoreboard players add stage ItemsExpedition 1
schedule function mc:states/9_expedition/place/manage_placement 1t replace