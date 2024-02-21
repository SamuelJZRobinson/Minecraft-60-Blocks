# Notes
  # Version 0.84

# Fatigue
  # Time Depleted
  execute if score day GameStatus = FATIGUE_MAX StatusLevels run scoreboard players set fatigued MaryStatus 1
  # Fatigue Chance (1 in x, n+1)
  scoreboard players operation memory em = FATIGUE StatusOdds
  execute if score fatigued MaryStatus matches 0 if score day GameStatus >= FATIGUE_MIN StatusLevels if score day GameStatus <= FATIGUE_MAX StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set fatigued MaryStatus 1
  scoreboard players set math_out em 0

# Thirst
  # Reduce Countdown
  execute unless score water MaryStatus matches ..0 run scoreboard players remove water MaryStatus 1
  execute if score water MaryStatus matches 0 run scoreboard players set alive MaryStatus 0

# Injuries
  # Reduce Countdown
  execute if score injured MaryStatus matches 1 unless score infection MaryStatus matches ..0 run scoreboard players remove infection MaryStatus 1
  execute if score infection MaryStatus matches 0 run scoreboard players set alive MaryStatus 0
  # Infection Chance (1 in x, n+1)
  scoreboard players operation memory em = INFECTION StatusOdds
  execute if score alive MaryStatus matches 1 if score sick MaryStatus matches 0 if score infection MaryStatus <= INFECTION_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set sick MaryStatus 1
  scoreboard players set math_out em 0

# Crazy
  # Override
  execute if score sanity MaryStatus = SANITY_MAX StatusLevels run scoreboard players set crazy MaryStatus 0
  execute if score sanity MaryStatus = SANITY_MAX StatusLevels run scoreboard players operation breakdown MaryStatus = BREAKDOWN_MAX StatusLevels
  execute if score sanity MaryStatus = SANITY_MAX StatusLevels run scoreboard players set crazyRage MaryStatus 0
  # Crazy Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY StatusOdds
  execute if score alive MaryStatus matches 1 if score crazy MaryStatus matches 0 if score sanity MaryStatus = SANITY_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazy MaryStatus 1
  scoreboard players set math_out em 0

# Mental Breakdown
  # Reduce Countdown
  execute if score crazy MaryStatus matches 1 unless score breakdown MaryStatus matches ..0 run scoreboard players remove breakdown MaryStatus 1
  execute unless score crazyRage MaryStatus matches -1 if score breakdown MaryStatus = BREAKDOWN_MIN StatusLevels run scoreboard players set crazyRage MaryStatus 1
  execute if score breakdown MaryStatus matches 0 run scoreboard players set crazyEscaped MaryStatus 1
  execute if score crazyEscaped MaryStatus matches 1 run scoreboard players set alive MaryStatus 0
  # Destroy Item Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY_RAGE StatusOdds
  execute if score alive MaryStatus matches 1 if score crazyRage MaryStatus matches 0 if score breakdown MaryStatus <= BREAKDOWN_RAGE_MAX StatusLevels if score breakdown MaryStatus > BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyRage MaryStatus 1
  execute if score crazyRage MaryStatus matches 1 if score itemCount ItemsBunker matches ..0 run scoreboard players set crazyEscaped MaryStatus 1
  execute if score crazyRage MaryStatus matches 1 if score itemCount ItemsBunker matches 1.. run function mc:states/stages/8_bunker/cosmetics/characters/set/set_crazy_mary
  scoreboard players set math_out em 0
  # Breakdown Chance (1 in x, n+1)
  scoreboard players operation memory em = MARY_BREAKDOWN_RESISTANCE StatusOdds
  execute if score alive MaryStatus matches 1 if score breakdown MaryStatus <= BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyEscaped MaryStatus 1
  execute if score crazyEscaped MaryStatus matches 1 run scoreboard players set alive MaryStatus 0
  scoreboard players set math_out em 0

# Sickness
  # Reduce Countdown
  execute if score sick MaryStatus matches 1 unless score sickness MaryStatus matches ..0 run scoreboard players remove sickness MaryStatus 1
  execute if score sickness MaryStatus matches 0 run scoreboard players set alive MaryStatus 0
  # Malnutrition Chance (1 in x, n+1)
    # Has Soup, No Water
    execute if score sick MaryStatus matches 0 if score soup MaryStatus > HUNGER_MIN StatusLevels if score water MaryStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive MaryStatus matches 1 if score sick MaryStatus matches 0 if score soup MaryStatus > HUNGER_MIN StatusLevels if score water MaryStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, Has Water
    execute if score sick MaryStatus matches 0 if score soup MaryStatus <= HUNGER_MIN StatusLevels if score water MaryStatus > THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_STARVATION StatusOdds
    execute if score alive MaryStatus matches 1 if score sick MaryStatus matches 0 if score soup MaryStatus <= HUNGER_MIN StatusLevels if score water MaryStatus > THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, No Water
    execute if score sick MaryStatus matches 0 if score soup MaryStatus <= HUNGER_MIN StatusLevels if score water MaryStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive MaryStatus matches 1 if score sick MaryStatus matches 0 if score soup MaryStatus <= HUNGER_MIN StatusLevels if score water MaryStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
  execute unless score task AtomicDrill matches 13..15 if score math_out em matches 1 run scoreboard players set sick MaryStatus 1
  scoreboard players set math_out em 0
  # Sickness Death Chance (1 in x, n+1)
  scoreboard players operation memory em = SICKNESS_DEATH StatusOdds
  execute if score alive MaryStatus matches 1 if score sickness MaryStatus <= SICKNESS_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set alive MaryStatus 0
  scoreboard players set math_out em 0

# Tiredness
  # Add later

# Decorate Bunker
  # Simplify Status Text Checks
    # Armor stand visibility managed by tf_raycast:set_name_visibility
  execute if score soup MaryStatus > HUNGER_MID StatusLevels run scoreboard players set soupLevel MaryStatus 0
  execute if score soup MaryStatus <= HUNGER_MID StatusLevels if score soup MaryStatus > HUNGER_MIN StatusLevels run scoreboard players set soupLevel MaryStatus 1
  execute if score soup MaryStatus <= HUNGER_MIN StatusLevels run scoreboard players set soupLevel MaryStatus 2
  execute if score infection MaryStatus = INFECTION_MAX StatusLevels run scoreboard players set injuredLevel MaryStatus 0
  execute if score infection MaryStatus < INFECTION_MAX StatusLevels if score infection MaryStatus > INFECTION_MIN StatusLevels run scoreboard players set injuredLevel MaryStatus 1
  execute if score infection MaryStatus <= INFECTION_MIN StatusLevels run scoreboard players set injuredLevel MaryStatus 2
  execute if score water MaryStatus > THIRST_MID StatusLevels run scoreboard players set waterLevel MaryStatus 0
  execute if score water MaryStatus <= THIRST_MID StatusLevels if score water MaryStatus > THIRST_MIN StatusLevels run scoreboard players set waterLevel MaryStatus 1
  execute if score water MaryStatus <= THIRST_MIN StatusLevels run scoreboard players set waterLevel MaryStatus 2