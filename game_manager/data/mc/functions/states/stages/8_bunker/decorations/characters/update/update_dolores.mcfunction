# Notes
  # Version 0.84
  # Perk: 20% resistance to becoming crazy (managed by refresh_scores)

# Fatigue
  # Time Depleted
  execute if score day GameStatus = FATIGUE_MAX StatusLevels run scoreboard players set fatigued DoloresStatus 1
  # Fatigue Chance (1 in x, n+1)
  scoreboard players operation memory em = FATIGUE StatusOdds
  execute if score fatigued DoloresStatus matches 0 if score day GameStatus >= FATIGUE_MIN StatusLevels if score day GameStatus <= FATIGUE_MAX StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set fatigued DoloresStatus 1
  scoreboard players set math_out em 0

# Hunger
  # Reduce Countdown
  execute unless score soup DoloresStatus matches ..0 run scoreboard players remove soup DoloresStatus 1
  execute if score soup DoloresStatus matches 0 run scoreboard players set alive DoloresStatus 0

# Thirst
  # Reduce Countdown
  execute unless score water DoloresStatus matches ..0 run scoreboard players remove water DoloresStatus 1
  execute if score water DoloresStatus matches 0 run scoreboard players set alive DoloresStatus 0

# Injuries
  # Reduce Countdown
  execute if score injured DoloresStatus matches 1 unless score infection DoloresStatus matches ..0 run scoreboard players remove infection DoloresStatus 1
  execute if score infection DoloresStatus matches 0 run scoreboard players set alive DoloresStatus 0
  # Infection Chance (1 in x, n+1)
  scoreboard players operation memory em = INFECTION StatusOdds
  execute if score alive DoloresStatus matches 1 if score sick DoloresStatus matches 0 if score infection DoloresStatus <= INFECTION_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set sick DoloresStatus 1
  scoreboard players set math_out em 0

# Crazy
  # Override
  execute if score sanity DoloresStatus = SANITY_MAX StatusLevels run scoreboard players set crazy DoloresStatus 0
  execute if score sanity DoloresStatus = SANITY_MAX StatusLevels run scoreboard players operation breakdown DoloresStatus = BREAKDOWN_MAX StatusLevels
  execute if score sanity DoloresStatus = SANITY_MAX StatusLevels run scoreboard players set crazyRage DoloresStatus 0
  # Crazy Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY StatusOdds
  execute if score alive DoloresStatus matches 1 if score crazy DoloresStatus matches 0 if score sanity DoloresStatus = SANITY_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazy DoloresStatus 1
  scoreboard players set math_out em 0

# Mental Breakdown
  # Reduce Countdown
  execute if score crazy DoloresStatus matches 1 unless score breakdown DoloresStatus matches ..0 run scoreboard players remove breakdown DoloresStatus 1
  execute unless score crazyRage DoloresStatus matches -1 if score breakdown DoloresStatus = BREAKDOWN_MIN StatusLevels run scoreboard players set crazyRage DoloresStatus 1
  execute if score breakdown DoloresStatus matches 0 run scoreboard players set crazyEscaped DoloresStatus 1
  execute if score crazyEscaped DoloresStatus matches 1 run scoreboard players set alive DoloresStatus 0
  # Destroy Item Chance (1 in x, n+1)
  scoreboard players operation memory em = CRAZY_RAGE StatusOdds
  execute if score alive DoloresStatus matches 1 if score crazyRage DoloresStatus matches 0 if score breakdown DoloresStatus <= BREAKDOWN_RAGE_MAX StatusLevels if score breakdown DoloresStatus > BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyRage DoloresStatus 1
  execute if score crazyRage DoloresStatus matches 1 if score itemCount ItemsBunker matches ..0 run scoreboard players set crazyEscaped DoloresStatus 1
  execute if score crazyRage DoloresStatus matches 1 if score itemCount ItemsBunker matches 1.. run function mc:states/stages/8_bunker/decorations/characters/set/set_crazy_dolores
  scoreboard players set math_out em 0
  # Breakdown Chance (1 in x, n+1)
  scoreboard players operation memory em = DOLORES_BREAKDOWN_RESISTANCE StatusOdds
  execute if score alive DoloresStatus matches 1 if score breakdown DoloresStatus <= BREAKDOWN_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set crazyEscaped DoloresStatus 1
  execute if score crazyEscaped DoloresStatus matches 1 run scoreboard players set alive DoloresStatus 0
  scoreboard players set math_out em 0

# Sickness
  # Reduce Countdown
  execute if score sick DoloresStatus matches 1 unless score sickness DoloresStatus matches ..0 run scoreboard players remove sickness DoloresStatus 1
  execute if score sickness DoloresStatus matches 0 run scoreboard players set alive DoloresStatus 0
  # Malnutrition Chance (1 in x, n+1)
    # Has Soup, No Water
    execute if score sick DoloresStatus matches 0 if score soup DoloresStatus > HUNGER_MIN StatusLevels if score water DoloresStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive DoloresStatus matches 1 if score sick DoloresStatus matches 0 if score soup DoloresStatus > HUNGER_MIN StatusLevels if score water DoloresStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, Has Water
    execute if score sick DoloresStatus matches 0 if score soup DoloresStatus <= HUNGER_MIN StatusLevels if score water DoloresStatus > THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_STARVATION StatusOdds
    execute if score alive DoloresStatus matches 1 if score sick DoloresStatus matches 0 if score soup DoloresStatus <= HUNGER_MIN StatusLevels if score water DoloresStatus > THIRST_MIN StatusLevels run function em:math/get_percentage
    # No Soup, No Water
    execute if score sick DoloresStatus matches 0 if score soup DoloresStatus <= HUNGER_MIN StatusLevels if score water DoloresStatus <= THIRST_MIN StatusLevels run scoreboard players operation memory em = SICKNESS_DEHYDRATION StatusOdds
    execute if score alive DoloresStatus matches 1 if score sick DoloresStatus matches 0 if score soup DoloresStatus <= HUNGER_MIN StatusLevels if score water DoloresStatus <= THIRST_MIN StatusLevels run function em:math/get_percentage
  execute unless score task AtomicDrill matches 13..15 if score math_out em matches 1 run scoreboard players set sick DoloresStatus 1
  scoreboard players set math_out em 0
  # Sickness Death Chance (1 in x, n+1)
  scoreboard players operation memory em = SICKNESS_DEATH StatusOdds
  execute if score alive DoloresStatus matches 1 if score sickness DoloresStatus <= SICKNESS_MIN StatusLevels run function em:math/get_percentage
  execute if score math_out em matches 1 run scoreboard players set alive DoloresStatus 0
  scoreboard players set math_out em 0

# Tiredness
  # Add later

# Decorate Bunker
  # Spawn
  execute if score alive DoloresStatus matches 1 unless entity @e[x=-2,y=54,z=31,dy=4,dz=1,type=minecraft:armor_stand,tag=bunkerDolores] run function mc:states/stages/8_bunker/decorations/characters/spawn/spawn_dolores
  # Simplify Status Text Checks
  # Values with single tests include: fatigued, crazy, sick, and tired
  execute if score soup DoloresStatus > HUNGER_MID StatusLevels run scoreboard players set soupLevel DoloresStatus 0
  execute if score soup DoloresStatus <= HUNGER_MID StatusLevels if score soup DoloresStatus > HUNGER_MIN StatusLevels run scoreboard players set soupLevel DoloresStatus 1
  execute if score soup DoloresStatus <= HUNGER_MIN StatusLevels run scoreboard players set soupLevel DoloresStatus 2
  execute if score infection DoloresStatus = INFECTION_MAX StatusLevels run scoreboard players set injuredLevel DoloresStatus 0
  execute if score infection DoloresStatus < INFECTION_MAX StatusLevels if score infection DoloresStatus > INFECTION_MIN StatusLevels run scoreboard players set injuredLevel DoloresStatus 1
  execute if score infection DoloresStatus <= INFECTION_MIN StatusLevels run scoreboard players set injuredLevel DoloresStatus 2
  execute if score water DoloresStatus > THIRST_MID StatusLevels run scoreboard players set waterLevel DoloresStatus 0
  execute if score water DoloresStatus <= THIRST_MID StatusLevels if score water DoloresStatus > THIRST_MIN StatusLevels run scoreboard players set waterLevel DoloresStatus 1
  execute if score water DoloresStatus <= THIRST_MIN StatusLevels run scoreboard players set waterLevel DoloresStatus 2
    # Armor stand visibility managed by tf_raycast:set_name_visibility
  # Update Death
  execute if score alive DoloresStatus matches 0 as @e[x=-2,y=54,z=31,dy=4,dz=1,type=minecraft:armor_stand,tag=bunkerDolores] run function mc:states/stages/8_bunker/decorations/characters/update/update_dolores_dead