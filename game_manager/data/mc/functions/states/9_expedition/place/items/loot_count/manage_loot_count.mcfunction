# No Loot Chance
execute store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":NO_LOOT,"objective":ExpeditionOdds}

# Outcome
  # Have Items
  execute unless score output Math matches 1 run function mc:states/9_expedition/place/items/loot_count/set_loot_count_success
  # No Items
  execute if score output Math matches 1 run scoreboard players set step ItemsExpedition 5
  execute if score output Math matches 1 run schedule function mc:states/9_expedition/place/manage_expedition 1t replace