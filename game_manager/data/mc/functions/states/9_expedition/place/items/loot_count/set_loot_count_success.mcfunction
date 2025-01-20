# Base Loot
function mc:states/9_expedition/place/items/loot_count/set_loot_count_base

# Boost Loot
  # Supply Drop
  function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":SUPPLY_DROP,"objective":ExpeditionOdds}
  execute if score output Math matches 1 run scoreboard players add lootLeft ItemsExpedition 4

# Non-Food Count
function mc:states/9_expedition/place/items/loot_count/set_loot_count_non_food

# Food Count For Remainder
function mc:states/9_expedition/place/items/loot_count/set_loot_count_food

# Proceed
schedule function mc:states/9_expedition/place/inc_step 1t replace