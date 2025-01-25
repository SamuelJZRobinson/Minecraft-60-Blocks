# Notes
  # Fatal after not eating food for 11 days.

# Decrement Score
$scoreboard players remove soup $(objective) 1

# Death
$execute if score soup $(objective) matches ..0 run scoreboard players set alive $(objective) -1