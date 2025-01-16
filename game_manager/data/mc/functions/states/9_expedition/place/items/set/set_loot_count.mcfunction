# Notes
  # Base loot corresponds to expedition duration.

# Base Loot
  # Short
  execute if score mapVisited MenuExpedition matches 1..4 store result score lootLeft ItemsExpedition run function mc:utility/math/get_random_value {x:1,y:5}
  # Medium
  execute if score mapVisited MenuExpedition matches 5..7 store result score lootLeft ItemsExpedition run function mc:utility/math/get_random_value {x:2,y:6}
  # Long
  execute if score mapVisited MenuExpedition matches 8 store result score lootLeft ItemsExpedition run function mc:utility/math/get_random_value {x:3,y:7}

# Boost Loot
  # Supply Drop
  function mc:states/9_expedition/place/items/set/set_loot_count_supply_drop

# Set Stage
scoreboard players add step ItemsExpedition 1
schedule function mc:states/9_expedition/place/manage_expedition 1t replace