# Increment Days
$execute if score isInjured $(objective) matches 1 run scoreboard players add injuredDays $(objective) 1

# Death Chance
$execute if score isInjured $(objective) matches 1 if score injuredDays $(objective) >= INJURED_DAYS_CRITICAL CharactersLevels store result score output Math run function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":INJURED_DEATH,"objective":CharactersOdds}
$execute if score isInjured $(objective) matches 1 if score injuredDays $(objective) >= INJURED_DAYS_CRITICAL CharactersLevels if score output Math matches 1 run scoreboard players set alive $(objective) -1

# Guaranteed Death
$execute if score injuredDays $(objective) >= INJURED_DAYS_DEATH CharactersLevels run scoreboard players set alive $(objective) -1