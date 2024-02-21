# Notes
  # Version 0.84
  # Perk: 20% chance to eat less soup during the starvation phase

# Fatigue
  # Time Depleted
  execute if score day GameStatus = FATIGUE_MAX StatusLevels run scoreboard players set fatigued TedStatus 1
  # Fatigue Chance (1 in x, n+1)
  scoreboard players operation memory em = FATIGUE StatusOdds
  execute if score fatigued TedStatus matches 0 if score day GameStatus >= FATIGUE_MIN StatusLevels if score day GameStatus <= FATIGUE_MAX StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set fatigued TedStatus 1
  scoreboard players set math_out em 0

# Hunger
  # Reduce Countdown
  execute unless score soup TedStatus matches ..0 run scoreboard players remove soup TedStatus 1
  execute if score soup TedStatus matches 0 run scoreboard players set alive TedStatus 0

# Thirst
  # Reduce Countdown
  execute unless score water TedStatus matches ..0 run scoreboard players remove water TedStatus 1
  execute if score water TedStatus matches 0 run scoreboard players set alive TedStatus 0

# Injuries
  # Reduce Countdown
  execute if score injured TedStatus matches 1 unless score infection TedStatus matches ..0 run scoreboard players remove infection TedStatus 1
  execute if score infection TedStatus matches 0 run scoreboard players set alive TedStatus 0
  # Infection Chance (1 in x, n+1)
  scoreboard players operation memory em = INFECTION StatusOdds
  execute if score alive TedStatus matches 1 if score sick TedStatus matches 0 if score infection TedStatus <= INFECTION_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set sick TedStatus 1
  scoreboard players set math_out em 0

# Crazy
  # Override
  execute if score sanity TedStatus = SANITY_MAX StatusLevels run scoreboard players set crazy TedStatus 0
  execute if score sanity TedStatus = SANITY_MAX StatusLevels run scoreboard players operation breakdown TedStatus = BREAKDOWN_MAX StatusLevels
  execute if score sanity TedStatus = SANITY_MAX StatusLevels run scoreboard players set crazyRage TedStatus 0
  # Crazy Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY StatusOdds
  execute if score alive TedStatus matches 1 if score crazy TedStatus matches 0 if score sanity TedStatus = SANITY_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazy TedStatus 1
  scoreboard players set math_out em 0

# Mental Breakdown
  # Reduce Countdown
  execute if score crazy TedStatus matches 1 unless score breakdown TedStatus matches ..0 run scoreboard players remove breakdown TedStatus 1
  execute unless score crazyRage TedStatus matches -1 if score breakdown TedStatus = BREAKDOWN_MIN StatusLevels run scoreboard players set crazyRage TedStatus 1
  execute if score breakdown TedStatus matches 0 run scoreboard players set crazyEscaped TedStatus 1
  execute if score crazyEscaped TedStatus matches 1 run scoreboard players set alive TedStatus 0
  # Destroy Item Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY_RAGE StatusOdds
  execute if score alive TedStatus matches 1 if score crazyRage TedStatus matches 0 if score breakdown TedStatus <= BREAKDOWN_RAGE_MAX StatusLevels if score breakdown TedStatus > BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyRage TedStatus 1
  execute if score crazyRage TedStatus matches 1 if score itemCount ItemsBunker matches ..0 run scoreboard players set crazyEscaped TedStatus 1
  execute if score crazyRage TedStatus matches 1 if score itemCount ItemsBunker matches 1.. run function mc:states/stages/8_bunker/cosmetics/characters/set/set_crazy_ted
  scoreboard players set math_out em 0
  # Breakdown Chance (1 in x, n+1)
  scoreboard players operation memory em = MENTAL_BREAKDOWN StatusOdds
  execute if score alive TedStatus matches 1 if score breakdown TedStatus <= BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyEscaped TedStatus 1
  execute if score crazyEscaped TedStatus matches 1 run scoreboard players set alive TedStatus 0
  scoreboard players set math_out em 0

# Sickness
  # Reduce Countdown
  execute if score sick TedStatus matches 1 unless score sickness TedStatus matches ..0 run scoreboard players remove sickness TedStatus 1
  execute if score sickness TedStatus matches 0 run scoreboard players set alive TedStatus 0
  # Malnutrition Chance (1 in x, n+1)
    # Has Soup, No Water
    execute if score sick TedStatus matches 0 if score soup TedStatus > HUNGER_MIN StatusLevels if score water TedStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive TedStatus matches 1 if score sick TedStatus matches 0 if score soup TedStatus > HUNGER_MIN StatusLevels if score water TedStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, Has Water
    execute if score sick TedStatus matches 0 if score soup TedStatus <= HUNGER_MIN StatusLevels if score water TedStatus > THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_STARVATION StatusOdds
    execute if score alive TedStatus matches 1 if score sick TedStatus matches 0 if score soup TedStatus <= HUNGER_MIN StatusLevels if score water TedStatus > THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, No Water
    execute if score sick TedStatus matches 0 if score soup TedStatus <= HUNGER_MIN StatusLevels if score water TedStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive TedStatus matches 1 if score sick TedStatus matches 0 if score soup TedStatus <= HUNGER_MIN StatusLevels if score water TedStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
  execute unless score task AtomicDrill matches 13..15 if score math_out em matches 1 run scoreboard players set sick TedStatus 1
  scoreboard players set math_out em 0
  # Sickness Death Chance (1 in x, n+1)
  scoreboard players operation memory em = SICKNESS_DEATH StatusOdds
  execute if score alive TedStatus matches 1 if score sickness TedStatus <= SICKNESS_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set alive TedStatus 0
  scoreboard players set math_out em 0

# Tiredness
  # Add later

# Decorate Bunker
  # Spawn
  execute if score alive TedStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerTed] run function mc:states/stages/8_bunker/cosmetics/characters/spawn/spawn_ted
  # Simplify Status Text Checks
  execute if score soup TedStatus > HUNGER_MID StatusLevels run scoreboard players set soupLevel TedStatus 0
  execute if score soup TedStatus <= HUNGER_MID StatusLevels if score soup TedStatus > HUNGER_MIN StatusLevels run scoreboard players set soupLevel TedStatus 1
  execute if score soup TedStatus <= HUNGER_MIN StatusLevels run scoreboard players set soupLevel TedStatus 2
  execute if score infection TedStatus = INFECTION_MAX StatusLevels run scoreboard players set injuredLevel TedStatus 0
  execute if score infection TedStatus < INFECTION_MAX StatusLevels if score infection TedStatus > INFECTION_MIN StatusLevels run scoreboard players set injuredLevel TedStatus 1
  execute if score infection TedStatus <= INFECTION_MIN StatusLevels run scoreboard players set injuredLevel TedStatus 2
  execute if score water TedStatus > THIRST_MID StatusLevels run scoreboard players set waterLevel TedStatus 0
  execute if score water TedStatus <= THIRST_MID StatusLevels if score water TedStatus > THIRST_MIN StatusLevels run scoreboard players set waterLevel TedStatus 1
  execute if score water TedStatus <= THIRST_MIN StatusLevels run scoreboard players set waterLevel TedStatus 2
    # Armor stand visibility managed by tf_raycast:set_name_visibility
  # Update Death
  execute if score alive TedStatus matches 0 as @e[type=minecraft:armor_stand,tag=bunkerTed] run function mc:states/stages/8_bunker/cosmetics/characters/update/update_ted_dead