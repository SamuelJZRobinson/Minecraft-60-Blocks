# Notes
  # Easy and hard modes were swapped to modify the range size according to the difficulty
  # If the character dies stop processing scripts.

# Get Risk
scoreboard players set deathChance ItemsExpedition 0
function mc:states/9_expedition/place/characters/get/get_risk

# Set Dice
execute if score difficulty Settings matches 1 run scoreboard players set mode em 2
execute if score difficulty Settings matches 3 run scoreboard players set mode em 1
scoreboard players set dynamicDifficulty em 1

### Refactor this
# Modify Chance According To Difficulty
scoreboard players operation memory em = deathChance ItemsExpedition
function em:math/get_percentage

# Death Chance (threshold in 100%, n+1)
  # Roll
  scoreboard players set math_in1 em 1
  scoreboard players set math_in2 em 101
  function em:math/randomp
  # Outcome
    # Dead
    execute unless score math_out em matches 0 if score math_out em <= memory em run function mc:states/9_expedition/place/characters/set_death_character
    # Alive
    execute unless score math_out em matches 0 if score math_out em > memory em run scoreboard players add step ItemsExpedition 1
    execute unless score math_out em matches 0 if score math_out em > memory em run schedule function mc:states/9_expedition/place/manage_expedition 1t replace