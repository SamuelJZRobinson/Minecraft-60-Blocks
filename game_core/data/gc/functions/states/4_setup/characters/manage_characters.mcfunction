# Declare Alive
execute if score doTed Settings matches 0 run scoreboard players set alive DoloresStatus 1
execute if score doTed Settings matches 1 run scoreboard players set alive TedStatus 1

# Spawn Characters
  # Ted
  execute unless score doTed Settings matches 1 unless entity @e[type=zombie,tag=ted] positioned 21.00 -30.00 0.50 run function gc:states/4_setup/characters/summon/summon_ted
  # Dolores
  execute unless score doTed Settings matches 0 unless entity @e[type=zombie,tag=dolores] positioned 21.00 -30.00 0.50 run function gc:states/4_setup/characters/summon/summon_dolores
  # Mary
  execute unless entity @e[type=zombie,tag=mary] positioned 21.00 -30.00 0.50 run function gc:states/4_setup/characters/summon/summon_mary
  # Timmy
  execute unless entity @e[type=zombie,tag=timmy] positioned 21.00 -30.00 0.50 run function gc:states/4_setup/characters/summon/summon_timmy

# Teleport Characters
  # Ted
  execute unless score doTed Settings matches 1 as @e[type=minecraft:zombie,tag=ted,limit=1] run function gc:states/4_setup/characters/tp/tp_ted
  # Dolores
  execute unless score doTed Settings matches 0 as @e[type=minecraft:zombie,tag=dolores,limit=1] run function gc:states/4_setup/characters/tp/tp_dolores
  # Mary
  execute as @e[type=minecraft:zombie,tag=mary,limit=1] run function gc:states/4_setup/characters/tp/tp_mary
  # Timmy
  execute as @e[type=minecraft:zombie,tag=timmy,limit=1] run function gc:states/4_setup/characters/tp/tp_timmy