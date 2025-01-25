# Notes
  # Fatal after not drinking water for 6 days.

# Decrement Score
$scoreboard players remove water $(objective) 1

# Death
$execute if score water $(objective) matches ..0 run scoreboard players set alive $(objective) -1