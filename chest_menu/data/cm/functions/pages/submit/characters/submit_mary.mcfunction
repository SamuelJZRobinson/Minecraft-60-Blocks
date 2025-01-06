# Nourish
  # Soup
    # Normal
    execute if score maryGiveSoup MenuFeed matches 1 if score mutated MaryStatus matches 0 run scoreboard players operation soup MaryStatus = HUNGER_MAX StatusLevels
    # Mutant
    execute if score maryGiveSoup MenuFeed matches 1 if score mutated MaryStatus matches 1 run scoreboard players operation soup MaryStatus += HUNGER_MID StatusLevels
    execute if score soup MaryStatus > HUNGER_MAX StatusLevels run scoreboard players operation soup MaryStatus = HUNGER_MAX StatusLevels
    # Water
    execute if score maryGiveWater MenuFeed matches 1 run scoreboard players operation water MaryStatus = THIRST_MAX StatusLevels
    # Medkit
    execute if score giveMedkit MenuFeed matches 2 run scoreboard players set sick MaryStatus 0
    execute if score giveMedkit MenuFeed matches 2 run scoreboard players operation terminalIllness MaryStatus = SICKNESS_MAX StatusLevels
    execute if score giveMedkit MenuFeed matches 2 run scoreboard players set injured MaryStatus 0
    execute if score giveMedkit MenuFeed matches 2 run scoreboard players operation infection MaryStatus = INFECTION_MAX StatusLevels

# Refresh Scores
scoreboard players set maryGiveSoup MenuFeed 0
scoreboard players set maryGiveWater MenuFeed 0