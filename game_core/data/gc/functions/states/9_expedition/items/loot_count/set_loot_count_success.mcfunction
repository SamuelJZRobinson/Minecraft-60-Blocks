# Base Loot
function gc:states/9_expedition/items/loot_count/set_loot_count_base

# Boost Loot
  # Supply Drop
  function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":SUPPLY_DROP,"objective":ExpeditionOdds}
  execute if score output Math matches 1 run scoreboard players add lootLeft ItemsExpedition 4

# Item Count
function gc:states/9_expedition/items/loot_count/set_loot_count_items

# Food Count For Remainder
function gc:states/9_expedition/items/loot_count/set_loot_count_food

# Proceed
schedule function gc:states/9_expedition/inc_step 1t replace