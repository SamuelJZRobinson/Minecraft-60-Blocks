# Chance
execute store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":NO_LOOT,"objective":ExpeditionOdds}

# Outcome
  # No Items
    # Do Nothing
  # Have Items
  schedule function mc:states/9_expedition/place/inc_step 1t replace