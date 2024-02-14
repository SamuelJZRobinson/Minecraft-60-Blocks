# NOTES
  # HUNGER_MAX and THIRST_MAX are n+1 since the max value minus one equals the expected duration (e.g., 11 days - 1 day = 10 days).
  # DOLORES_RESISTANCE and MaryResistance are generated dynamically.

# STATUS ODDS
  # Levels
  scoreboard objectives add StatusLevels dummy {"bold":true,"color":"white","text":"Status Levels"}
  scoreboard players set BREAKDOWN_MIN StatusLevels 12
  scoreboard players set BREAKDOWN_RAGE_MAX StatusLevels 18
  scoreboard players set BREAKDOWN_MAX StatusLevels 35
  scoreboard players set FATIGUE_MIN StatusLevels 16
  scoreboard players set FATIGUE_MAX StatusLevels 24
  scoreboard players set HUNGER_MIN StatusLevels 3
  scoreboard players set HUNGER_MID StatusLevels 6
  scoreboard players set HUNGER_MAX StatusLevels 11
  scoreboard players set THIRST_MIN StatusLevels 2
  scoreboard players set THIRST_MID StatusLevels 4
  scoreboard players set THIRST_MAX StatusLevels 6
  scoreboard players set INFECTION_MIN StatusLevels 14
  scoreboard players set INFECTION_MAX StatusLevels 28
  scoreboard players set SANITY_MIN StatusLevels 0
  scoreboard players set SANITY_MAX StatusLevels 7
  scoreboard players set SICKNESS_MIN StatusLevels 5
  scoreboard players set SICKNESS_MAX StatusLevels 20
  # Odds
  scoreboard objectives add StatusOdds dummy {"bold":true,"color":"white","text":"Status Odds"}
  scoreboard players set BUNKER_BLACKOUT StatusOdds 70
  scoreboard players set CANNIBALISM StatusOdds 15
  scoreboard players set CRAZY StatusOdds 2
  scoreboard players set CRAZY_RAGE StatusOdds 6
  scoreboard players set DIFFICULTY_PERCENTAGE StatusOdds 20
  scoreboard players set FATIGUE StatusOdds 8
  scoreboard players set INFECTION StatusOdds 14
  scoreboard players set MENTAL_BREAKDOWN StatusOdds 12
  scoreboard players set MUTATE StatusOdds 300
  scoreboard players set REVIVE StatusOdds 300
  scoreboard players set SICKNESS_DEATH StatusOdds 5
  scoreboard players set SICKNESS_STARVATION StatusOdds 5
  scoreboard players set SICKNESS_DEHYDRATION StatusOdds 3
    # Dolores Crazy Resistance (Mode, n+1)
    scoreboard players set mode em 2
    scoreboard players set notRandom em 1
    scoreboard players operation memory em = MENTAL_BREAKDOWN StatusOdds
    scoreboard players set math_in1 em 20
    function em:math/get_percentage
    scoreboard players operation DOLORES_RESISTANCE StatusOdds = math_out em
    # Mary Crazy Resistance (Mode, n+1)
    scoreboard players set mode em 3
    scoreboard players set notRandom em 1
    scoreboard players operation memory em = MENTAL_BREAKDOWN StatusOdds
    scoreboard players set math_in1 em 20
    function em:math/get_percentage
    scoreboard players operation MARY_RESISTANCE StatusOdds = math_out em

# STATUS
  # Dolores
  scoreboard objectives add DoloresStatus dummy {"bold":true,"color":"white","text":"Dolores Status"}
  scoreboard players set build DoloresStatus 0
  scoreboard players operation soup DoloresStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel DoloresStatus 0
  scoreboard players operation water DoloresStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel DoloresStatus 0
  scoreboard players set alive DoloresStatus 0
  scoreboard players set escaped DoloresStatus 0
  scoreboard players set fatigued DoloresStatus 0
  scoreboard players set injured DoloresStatus 0
  scoreboard players set injuredLevel DoloresStatus 0
  scoreboard players set crazy DoloresStatus 0
  scoreboard players set crazyRage DoloresStatus 0
  scoreboard players operation sanity DoloresStatus = SANITY_MAX StatusLevels
  scoreboard players set sick DoloresStatus 0
  scoreboard players set survivedNuke DoloresStatus 1
  scoreboard players set tired DoloresStatus 0
  scoreboard players operation sickness DoloresStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown DoloresStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection DoloresStatus = INFECTION_MAX StatusLevels
  # Mary
  scoreboard objectives add MaryStatus dummy {"bold":true,"color":"white","text":"Mary Status"}
  scoreboard players set build MaryStatus 0
  scoreboard players operation soup MaryStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel MaryStatus 0
  scoreboard players operation water MaryStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel MaryStatus 0
  scoreboard players set alive MaryStatus 0
  scoreboard players set escaped MaryStatus 0
  scoreboard players set fatigued MaryStatus 0
  scoreboard players set injured MaryStatus 0
  scoreboard players set injuredLevel MaryStatus 0
  scoreboard players set crazy MaryStatus 0
  scoreboard players set crazyRage MaryStatus 0
  scoreboard players set mutated MaryStatus 0
  scoreboard players operation sanity MaryStatus = SANITY_MAX StatusLevels
  scoreboard players set sick MaryStatus 0
  scoreboard players set survivedNuke MaryStatus 1
  scoreboard players set tired MaryStatus 0
  scoreboard players operation sickness MaryStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown MaryStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection MaryStatus = INFECTION_MAX StatusLevels
  # Ted
  scoreboard objectives add TedStatus dummy {"bold":true,"color":"white","text":"Ted Status"}
  scoreboard players set build TedStatus 0
  scoreboard players operation soup TedStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel TedStatus 0
  scoreboard players operation water TedStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel TedStatus 0
  scoreboard players set alive TedStatus 0
  scoreboard players set escaped TedStatus 0
  scoreboard players set fatigued TedStatus 0
  scoreboard players set injured TedStatus 0
  scoreboard players set injuredLevel TedStatus 0
  scoreboard players set crazy TedStatus 0
  scoreboard players set crazyRage TedStatus 0
  scoreboard players operation sanity TedStatus = SANITY_MAX StatusLevels
  scoreboard players set sick TedStatus 0
  scoreboard players set survivedNuke TedStatus 1
  scoreboard players set tired TedStatus 0
  scoreboard players operation sickness TedStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown TedStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection TedStatus = INFECTION_MAX StatusLevels
  # Timmy
  scoreboard objectives add TimmyStatus dummy {"bold":true,"color":"white","text":"Timmy Status"}
  scoreboard players set build TimmyStatus 0
  scoreboard players operation soup TimmyStatus = HUNGER_MAX StatusLevels
  scoreboard players set soupLevel TimmyStatus 0
  scoreboard players operation water TimmyStatus = THIRST_MAX StatusLevels
  scoreboard players set waterLevel TimmyStatus 0
  scoreboard players set alive TimmyStatus 0
  scoreboard players set escaped TimmyStatus 0
  scoreboard players set fatigued TimmyStatus 0
  scoreboard players set injured TimmyStatus 0
  scoreboard players set injuredLevel TimmyStatus 0
  scoreboard players set crazy TimmyStatus 0
  scoreboard players set crazyRage TimmyStatus 0
  scoreboard players operation sanity TimmyStatus = SANITY_MAX StatusLevels
  scoreboard players set sick TimmyStatus 0
  scoreboard players set survivedNuke TimmyStatus 1
  scoreboard players set tired TimmyStatus 0
  scoreboard players operation sickness TimmyStatus = SICKNESS_MAX StatusLevels
  scoreboard players operation breakdown TimmyStatus = BREAKDOWN_MAX StatusLevels
  scoreboard players operation infection TimmyStatus = INFECTION_MAX StatusLevels