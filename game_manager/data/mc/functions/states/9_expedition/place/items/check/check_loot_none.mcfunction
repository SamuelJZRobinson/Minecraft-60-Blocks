# Chance
execute store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":NO_LOOT,"objective":ExpeditionOdds}

# Outcome
  # No Items
    # Do Nothing
  # Have Items
  execute unless score output Math matches 1 run scoreboard players add step ItemsExpedition 1
  execute unless score output Math matches 1 run schedule function mc:states/9_expedition/place/manage_expedition 1t replace