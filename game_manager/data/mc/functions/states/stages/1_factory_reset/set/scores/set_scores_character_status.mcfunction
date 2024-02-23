# NOTES
  # HUNGER_MAX and THIRST_MAX are n+1 since "max-1 = expected duration" (e.g., 11 days - 1 day = 10 days).
  ### What does survivedNuke refer to?

# CONSTANTS
  # STATUS LEVELS
  scoreboard objectives add StatusLevels dummy {"bold":true,"color":"white","text":"Status Levels"}
  # Breakdown
  scoreboard players set BREAKDOWN_MIN StatusLevels 12
  scoreboard players set BREAKDOWN_RAGE_MAX StatusLevels 18
  scoreboard players set BREAKDOWN_MAX StatusLevels 35
  # Fatigue
  scoreboard players set FATIGUE_MIN StatusLevels 16
  scoreboard players set FATIGUE_MAX StatusLevels 24
  # Hunger
  scoreboard players set HUNGER_MIN StatusLevels 3
  scoreboard players set HUNGER_MID StatusLevels 6
  scoreboard players set HUNGER_MAX StatusLevels 11
  # Thirst
  scoreboard players set THIRST_MIN StatusLevels 2
  scoreboard players set THIRST_MID StatusLevels 4
  scoreboard players set THIRST_MAX StatusLevels 6
  # Infection
  scoreboard players set INFECTION_MIN StatusLevels 14
  scoreboard players set INFECTION_MAX StatusLevels 28
  # Sanity
  scoreboard players set SANITY_MIN StatusLevels 0
  scoreboard players set SANITY_MAX StatusLevels 7
  # Sickness
  scoreboard players set SICKNESS_MIN StatusLevels 5
  scoreboard players set SICKNESS_MAX StatusLevels 20

  # STATUS ODDS
  scoreboard objectives add StatusOdds dummy {"bold":true,"color":"white","text":"Status Odds"}
  # Difficulty
  scoreboard players set DIFFICULTY_PERCENTAGE StatusOdds 20
  # Bunker Cosmetic
  scoreboard players set BUNKER_BLACKOUT StatusOdds 70
  # Revive
  scoreboard players set REVIVE StatusOdds 200
  # Mutant Mary Jane
  scoreboard players set MUTATE StatusOdds 200
  scoreboard players set CANNIBALISM StatusOdds 15
  # Crazy
  scoreboard players set MENTAL_BREAKDOWN StatusOdds 12
  scoreboard players set CRAZY StatusOdds 2
  scoreboard players set CRAZY_RAGE StatusOdds 6
  # Dolores Crazy Resistance
    # Set Dice
    scoreboard players set mode Math 1
    scoreboard players set dynamicDifficulty Math 0
    # Set Input
    data modify storage minecraft:math x set value 20
    execute store result storage minecraft:math y int 1 run scoreboard players get MENTAL_BREAKDOWN StatusOdds
    # Calculate
    function mc:utility/math/get_percentage
    # Store
    scoreboard players operation DOLORES_BREAKDOWN_RESISTANCE StatusOdds = out Math
  # Mary Crazy Resistance
    # Set Dice
    scoreboard players set mode Math 2
    scoreboard players set dynamicDifficulty Math 0
    # Set Input
    data modify storage minecraft:math x set value 20
    execute store result storage minecraft:math y int 1 run scoreboard players get MENTAL_BREAKDOWN StatusOdds
    # Calculate
    function mc:utility/math/get_percentage
    # Store
    scoreboard players operation MARY_BREAKDOWN_RESISTANCE StatusOdds = out Math
  # Fatigue
  scoreboard players set FATIGUE StatusOdds 8
  # Infection
  scoreboard players set INFECTION StatusOdds 14
  # Sickness
  scoreboard players set SICKNESS_STARVATION StatusOdds 5
  scoreboard players set SICKNESS_DEHYDRATION StatusOdds 3
  scoreboard players set SICKNESS_DEATH StatusOdds 5

# CHARACTERS
  # DOLORES STATUS
  scoreboard objectives add DoloresStatus dummy {"bold":true,"color":"white","text":"Dolores Status"}
  # Build
  scoreboard players set build DoloresStatus 0
  scoreboard players set alive DoloresStatus 0
  scoreboard players set survivedNuke DoloresStatus 1
  # Sustenance
  scoreboard players operation soup DoloresStatus = HUNGER_MAX StatusLevels
  ### What is this, is it necessary to have souplevel/waterlevel?
  scoreboard players set soupLevel DoloresStatus 0
  scoreboard players operation water DoloresStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel DoloresStatus 0
  # Crazy
  scoreboard players operation breakdown DoloresStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation sanity DoloresStatus = SANITY_MAX StatusLevels
  scoreboard players set crazy DoloresStatus 0
  scoreboard players set crazyRage DoloresStatus 0
  scoreboard players set crazyEscaped DoloresStatus 0
  # Injury
  scoreboard players set injured DoloresStatus 0
  scoreboard players set injuredLevel DoloresStatus 0
  scoreboard players operation infection DoloresStatus = INFECTION_MAX StatusLevels
  # Fatigue
  scoreboard players set tired DoloresStatus 0
  scoreboard players set fatigued DoloresStatus 0
  # Sickness
  scoreboard players set sick DoloresStatus 0
  scoreboard players operation sickness DoloresStatus = SICKNESS_MAX StatusLevels

  # MARY STATUS
  scoreboard objectives add MaryStatus dummy {"bold":true,"color":"white","text":"Mary Status"}
  # Build
  scoreboard players set build MaryStatus 0
  scoreboard players set alive MaryStatus 0
  scoreboard players set survivedNuke MaryStatus 1
  # Sustenance
  scoreboard players operation soup MaryStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel MaryStatus 0
  scoreboard players operation water MaryStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel MaryStatus 0
  # Crazy
  scoreboard players operation breakdown MaryStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation sanity MaryStatus = SANITY_MAX StatusLevels
  scoreboard players set crazy MaryStatus 0
  scoreboard players set crazyRage MaryStatus 0
  scoreboard players set crazyEscaped MaryStatus 0
  # Fatigue
  scoreboard players set tired MaryStatus 0
  scoreboard players set fatigued MaryStatus 0
  # Injury
  scoreboard players set injured MaryStatus 0
  scoreboard players set injuredLevel MaryStatus 0
  scoreboard players operation infection MaryStatus = INFECTION_MAX StatusLevels
  # Sickness
  scoreboard players set sick MaryStatus 0
  scoreboard players operation sickness MaryStatus = SICKNESS_MAX StatusLevels
  # Mutant
  scoreboard players set mutated MaryStatus 0

  # TED STATUS
  scoreboard objectives add TedStatus dummy {"bold":true,"color":"white","text":"Ted Status"}
  # Build
  scoreboard players set build TedStatus 0
  scoreboard players set alive TedStatus 0
  scoreboard players set survivedNuke TedStatus 1
  # Sustenance
  scoreboard players operation soup TedStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel TedStatus 0
  scoreboard players operation water TedStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel TedStatus 0
  # Crazy
  scoreboard players operation breakdown TedStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation sanity TedStatus = SANITY_MAX StatusLevels
  scoreboard players set crazy TedStatus 0
  scoreboard players set crazyRage TedStatus 0
  scoreboard players set crazyEscaped TedStatus 0
  # Fatigue
  scoreboard players set tired TedStatus 0
  scoreboard players set fatigued TedStatus 0
  # Injury
  scoreboard players set injured TedStatus 0
  scoreboard players set injuredLevel TedStatus 0
  scoreboard players operation infection TedStatus = INFECTION_MAX StatusLevels
  # Sickness
  scoreboard players set sick TedStatus 0
  scoreboard players operation sickness TedStatus = SICKNESS_MAX StatusLevels

  # TIMMY STATUS
  scoreboard objectives add TimmyStatus dummy {"bold":true,"color":"white","text":"Timmy Status"}
  # Build
  scoreboard players set build TimmyStatus 0
  scoreboard players set alive TimmyStatus 0
  scoreboard players set survivedNuke TimmyStatus 1
  # Sustenance
  scoreboard players operation soup TimmyStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel TimmyStatus 0
  scoreboard players operation water TimmyStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel TimmyStatus 0
  # Crazy
  scoreboard players operation breakdown TimmyStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation sanity TimmyStatus = SANITY_MAX StatusLevels
  scoreboard players set crazy TimmyStatus 0
  scoreboard players set crazyRage TimmyStatus 0
  scoreboard players set crazyEscaped TimmyStatus 0
  # Fatigue
  scoreboard players set tired TimmyStatus 0
  scoreboard players set fatigued TimmyStatus 0
  # Injury
  scoreboard players set injured TimmyStatus 0
  scoreboard players set injuredLevel TimmyStatus 0
  scoreboard players operation infection TimmyStatus = INFECTION_MAX StatusLevels
  # Sickness
  scoreboard players set sick TimmyStatus 0
  scoreboard players operation sickness TimmyStatus = SICKNESS_MAX StatusLevels