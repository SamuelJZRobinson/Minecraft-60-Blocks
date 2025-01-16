# Notes
  # Odds are 1 in X.

# Objective
scoreboard objectives add StatusOdds dummy {"bold":true,"color":"white","text":"Status Odds"}

# Difficulty
scoreboard players set DIFFICULTY_PERCENTAGE StatusOdds 20

# Bunker
  # Lights
  scoreboard players set BUNKER_BLACKOUT StatusOdds 70

# Characters
  # Status
    # Mutant Mary Jane
    scoreboard players set MUTANT StatusOdds 20
    scoreboard players set CANNIBALISM StatusOdds 20
    # Crazy
    scoreboard players set CRAZY StatusOdds 2
    scoreboard players set CRAZY_RAGE StatusOdds 6
    scoreboard players set CRAZY_ESCAPE StatusOdds 15
    execute store result score DOLORES_CRAZY_ESCAPE_RESISTANCE StatusOdds run function mc:utility/math/get_percentage_of_value_via_score {"percentage":120,"score":CRAZY_ESCAPE,"objective":StatusOdds}
    execute store result score MARY_CRAZY_ESCAPE_RESISTANCE StatusOdds run function mc:utility/math/get_percentage_of_value_via_score {"percentage":80,"score":CRAZY_ESCAPE,"objective":StatusOdds}
    # Fatigue
    scoreboard players set FATIGUE StatusOdds 8
    # Injured
    scoreboard players set INJURED_DEATH StatusOdds 5
    # Sickness
    scoreboard players set SICK_STARVATION StatusOdds 10
    scoreboard players set SICK_DEHYDRATION StatusOdds 5
    scoreboard players set SICK_DEATH StatusOdds 20