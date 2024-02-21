# Notes
  # Version 0.84
  # Perk: 20% chance to get an extra item from scavenging

# Fatigue
  # Time Depleted
  execute if score day GameStatus = FATIGUE_MAX StatusLevels run scoreboard players set fatigued TimmyStatus 1
  # Fatigue Chance (1 in x, n+1)
  scoreboard players operation memory em = FATIGUE StatusOdds
  execute if score fatigued TimmyStatus matches 0 if score day GameStatus >= FATIGUE_MIN StatusLevels if score day GameStatus <= FATIGUE_MAX StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set fatigued TimmyStatus 1
  scoreboard players set math_out em 0

# Hunger
  # Reduce Countdown
  execute unless score soup TimmyStatus matches ..0 run scoreboard players remove soup TimmyStatus 1
  execute if score soup TimmyStatus matches 0 run scoreboard players set alive TimmyStatus 0

# Thirst
  # Reduce Countdown
  execute unless score water TimmyStatus matches ..0 run scoreboard players remove water TimmyStatus 1
  execute if score water TimmyStatus matches 0 run scoreboard players set alive TimmyStatus 0

# Injuries
  # Reduce Countdown
  execute if score injured TimmyStatus matches 1 unless score infection TimmyStatus matches ..0 run scoreboard players remove infection TimmyStatus 1
  execute if score infection TimmyStatus matches 0 run scoreboard players set alive TimmyStatus 0
  # Infection Chance (1 in x, n+1)
  scoreboard players operation memory em = INFECTION StatusOdds
  execute if score alive TimmyStatus matches 1 if score sick TimmyStatus matches 0 if score infection TimmyStatus <= INFECTION_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set sick TimmyStatus 1
  scoreboard players set math_out em 0

# Crazy
  # Override
  execute if score sanity TimmyStatus = SANITY_MAX StatusLevels run scoreboard players set crazy TimmyStatus 0
  execute if score sanity TimmyStatus = SANITY_MAX StatusLevels run scoreboard players operation breakdown TimmyStatus = BREAKDOWN_MAX StatusLevels
  execute if score sanity TimmyStatus = SANITY_MAX StatusLevels run scoreboard players set crazyRage TimmyStatus 0
  # Crazy Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY StatusOdds
  execute if score alive TimmyStatus matches 1 if score crazy TimmyStatus matches 0 if score sanity TimmyStatus = SANITY_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazy TimmyStatus 1
  scoreboard players set math_out em 0

# Mental Breakdown
  # Reduce Countdown
  execute if score crazy TimmyStatus matches 1 unless score breakdown TimmyStatus matches ..0 run scoreboard players remove breakdown TimmyStatus 1
  execute unless score crazyRage TimmyStatus matches -1 if score breakdown TimmyStatus = BREAKDOWN_MIN StatusLevels run scoreboard players set crazyRage TimmyStatus 1
  execute if score breakdown TimmyStatus matches 0 run scoreboard players set crazyEscaped TimmyStatus 1
  execute if score crazyEscaped TimmyStatus matches 1 run scoreboard players set alive TimmyStatus 0
  # Destroy Item Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY_RAGE StatusOdds
  execute if score alive TimmyStatus matches 1 if score crazyRage TimmyStatus matches 0 if score breakdown TimmyStatus <= BREAKDOWN_RAGE_MAX StatusLevels if score breakdown TimmyStatus > BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyRage TimmyStatus 1
  execute if score crazyRage TimmyStatus matches 1 if score itemCount ItemsBunker matches ..0 run scoreboard players set crazyEscaped TimmyStatus 1
  execute if score crazyRage TimmyStatus matches 1 if score itemCount ItemsBunker matches 1.. run function mc:states/stages/8_bunker/cosmetics/characters/set/set_crazy_timmy
  scoreboard players set math_out em 0
  # Breakdown Chance (1 in x, n+1)
  scoreboard players operation memory em = MENTAL_BREAKDOWN StatusOdds
  execute if score alive TimmyStatus matches 1 if score breakdown TimmyStatus <= BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyEscaped TimmyStatus 1
  execute if score crazyEscaped TimmyStatus matches 1 run scoreboard players set alive TimmyStatus 0
  scoreboard players set math_out em 0

# Sickness
  # Reduce Countdown
  execute if score sick TimmyStatus matches 1 unless score sickness TimmyStatus matches ..0 run scoreboard players remove sickness TimmyStatus 1
  execute if score sickness TimmyStatus matches 0 run scoreboard players set alive TimmyStatus 0
  # Malnutrition Chance (1 in x, n+1)
    # Has Soup, No Water
    execute if score sick TimmyStatus matches 0 if score soup TimmyStatus > HUNGER_MIN StatusLevels if score water TimmyStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive TimmyStatus matches 1 if score sick TimmyStatus matches 0 if score soup TimmyStatus > HUNGER_MIN StatusLevels if score water TimmyStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, Has Water
    execute if score sick TimmyStatus matches 0 if score soup TimmyStatus <= HUNGER_MIN StatusLevels if score water TimmyStatus > THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_STARVATION StatusOdds
    execute if score alive TimmyStatus matches 1 if score sick TimmyStatus matches 0 if score soup TimmyStatus <= HUNGER_MIN StatusLevels if score water TimmyStatus > THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, No Water
    execute if score sick TimmyStatus matches 0 if score soup TimmyStatus <= HUNGER_MIN StatusLevels if score water TimmyStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive TimmyStatus matches 1 if score sick TimmyStatus matches 0 if score soup TimmyStatus <= HUNGER_MIN StatusLevels if score water TimmyStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
  execute unless score task AtomicDrill matches 13..15 if score math_out em matches 1 run scoreboard players set sick TimmyStatus 1
  scoreboard players set math_out em 0
  # Sickness Death Chance (1 in x, n+1)
  scoreboard players operation memory em = SICKNESS_DEATH StatusOdds
  execute if score alive TimmyStatus matches 1 if score sickness TimmyStatus <= SICKNESS_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set alive TimmyStatus 0
  scoreboard players set math_out em 0

# Tiredness
  # Add later

# Decorate Bunker
  # Spawn
  execute if score alive TimmyStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerTimmy] run function mc:states/stages/8_bunker/cosmetics/characters/spawn/spawn_timmy
  # Simplify Status Text Checks
  execute if score soup TimmyStatus > HUNGER_MID StatusLevels run scoreboard players set soupLevel TimmyStatus 0
  execute if score soup TimmyStatus <= HUNGER_MID StatusLevels if score soup TimmyStatus > HUNGER_MIN StatusLevels run scoreboard players set soupLevel TimmyStatus 1
  execute if score soup TimmyStatus <= HUNGER_MIN StatusLevels run scoreboard players set soupLevel TimmyStatus 2
  execute if score infection TimmyStatus = INFECTION_MAX StatusLevels run scoreboard players set injuredLevel TimmyStatus 0
  execute if score infection TimmyStatus < INFECTION_MAX StatusLevels if score infection TimmyStatus > INFECTION_MIN StatusLevels run scoreboard players set injuredLevel TimmyStatus 1
  execute if score infection TimmyStatus <= INFECTION_MIN StatusLevels run scoreboard players set injuredLevel TimmyStatus 2
  execute if score water TimmyStatus > THIRST_MID StatusLevels run scoreboard players set waterLevel TimmyStatus 0
  execute if score water TimmyStatus <= THIRST_MID StatusLevels if score water TimmyStatus > THIRST_MIN StatusLevels run scoreboard players set waterLevel TimmyStatus 1
  execute if score water TimmyStatus <= THIRST_MIN StatusLevels run scoreboard players set waterLevel TimmyStatus 2
    # Armor stand visibility managed by tf_raycast:set_name_visibility
  # Update Death
  execute if score alive TimmyStatus matches 0 as @e[type=minecraft:armor_stand,tag=bunkerTimmy] run function mc:states/stages/8_bunker/cosmetics/characters/update/update_timmy_dead