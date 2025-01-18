# Notes
  # Fatigue is applies between day min to day max.

# Fatigue Chance
$execute if score isFatigued $(objective) matches 0 if score day GameStatus >= FATIGUE_DAYS_START CharactersLevels if score day GameStatus <= FATIGUE_DAYS_END CharactersLevels store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":FATIGUE,"objective":CharactersOdds}
$execute if score isFatigued $(objective) matches 0 if score day GameStatus >= FATIGUE_DAYS_START CharactersLevels if score day GameStatus <= FATIGUE_DAYS_END CharactersLevels if score output Math matches 1 run scoreboard players set isFatigued $(objective) 1
# Over Max Day
$execute if score day GameStatus > FATIGUE_DAYS_START CharactersLevels run scoreboard players set isFatigued $(objective) 1