# Notes
  # Odds are 1 in X.

# Objective
scoreboard objectives add CharactersOdds dummy {"bold":true,"color":"white","text":"Characters Odds"}

# Bunker
  # Lights
  scoreboard players set BUNKER_BLACKOUT CharactersOdds 70

# Characters
  # Status
    # Mutant Mary Jane
    scoreboard players set MUTANT CharactersOdds 20
    scoreboard players set CANNIBALISM CharactersOdds 20
    # Crazy
    scoreboard players set CRAZY CharactersOdds 2
    scoreboard players set CRAZY_RAGE CharactersOdds 5
    scoreboard players set CRAZY_ESCAPE CharactersOdds 15
    execute store result score DOLORES_CRAZY_ESCAPE CharactersOdds run function mc:utility/math/get_percentage_of_value_via_score {"percentage":120,"score":CRAZY_ESCAPE,"objective":CharactersOdds}
    execute store result score MARY_CRAZY_ESCAPE CharactersOdds run function mc:utility/math/get_percentage_of_value_via_score {"percentage":80,"score":CRAZY_ESCAPE,"objective":CharactersOdds}
    # Fatigue
    scoreboard players set FATIGUE CharactersOdds 8
    # Injured
    scoreboard players set INJURED_DEATH CharactersOdds 5
    # Sickness
    scoreboard players set SICK_STARVATION CharactersOdds 10
    scoreboard players set SICK_DEHYDRATION CharactersOdds 5
    scoreboard players set SICK_DEATH CharactersOdds 20