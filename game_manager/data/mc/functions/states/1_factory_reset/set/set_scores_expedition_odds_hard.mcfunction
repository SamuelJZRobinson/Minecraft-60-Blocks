# Items
  # Supply Drop
  execute store result score SUPPLY_DROP ExpeditionOdds run function mc:utility/math/get_percentage_of_value_via_score_score {"xscore":EASY_MODIFIER,"xobjective":Settings,"yscore":SUPPLY_DROP,"yobjective":ExpeditionOdds}
  # No Loot
  execute store result score NO_LOOT ExpeditionOdds run function mc:utility/math/get_percentage_of_value_via_score_score {"xscore":HARD_MODIFIER,"xobjective":Settings,"yscore":NO_LOOT,"yobjective":ExpeditionOdds}
  # Item Break
  scoreboard players set ITEM_BREAK ExpeditionOdds 2