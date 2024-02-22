# Notes
  # Mutant Mary is immune to status effects and other circumstances.
  # Three threat levels exists determining how much to increase death odds.

# Standard
  # Dolores
  execute if score characterSent MenuExplore matches 1 run function mc:states/stages/9_expedition/place/characters/get/get_risk_dolores
  # Mary
  execute if score characterSent MenuExplore matches 2 run function mc:states/stages/9_expedition/place/characters/get/get_risk_mary
  # Ted
  execute if score characterSent MenuExplore matches 4 run function mc:states/stages/9_expedition/place/characters/get/get_risk_ted
  # Timmy
  execute if score characterSent MenuExplore matches 5 run function mc:states/stages/9_expedition/place/characters/get/get_risk_timmy

# Other Circumstances
execute unless score characterSent MenuExplore matches 3 run function mc:states/stages/9_expedition/place/characters/get/get_risk_other