# Notes
  # Timmy spawns separately due to being referenced in Atomic Drill

# Spawn Characters
  # Ted
  execute unless score doTed Settings matches 1 run summon minecraft:zombie 24.00 64.00 -6.50 {Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,DeathTime:19,DeathLootTable:"lt_custom:entities/ted",PersistenceRequired:1b,Health:1f,Tags:["houseTed","3Slot"],CustomName:'{"text":"Ted"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:725017}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6578260}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7167800}}},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:27}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:0}]}
  # Dolores
  execute unless score doTed Settings matches 0 run summon minecraft:zombie 24.00 64.00 -6.50 {Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,DeathTime:19,DeathLootTable:"lt_custom:entities/dolores",PersistenceRequired:1b,Health:1f,Tags:["houseDolores","2Slot"],CustomName:'{"text":"Dolores"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:11543873}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13355975}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13550229}}},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:7}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:0}]}
  # Mary Jane
  summon minecraft:zombie 24.00 64.00 -6.50 {Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,DeathTime:19,DeathLootTable:"lt_custom:entities/mary",PersistenceRequired:1b,Health:1f,Tags:["houseMary","3Slot"],CustomName:'{"text":"Mary Jane"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4208422}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2501178}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13488091}}},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:12}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:0}]}
  # Timmy
  function mc:states/4_setup/place/characters/spawn/spawn_timmy

# Teleport Characters
  # Ted
  execute unless score doTed Settings matches 1 as @e[type=minecraft:zombie,tag=houseTed,limit=1] run function mc:states/4_setup/place/characters/tp/tp_ted
  # Dolores
  execute unless score doTed Settings matches 0 as @e[type=minecraft:zombie,tag=houseDolores,limit=1] run function mc:states/4_setup/place/characters/tp/tp_dolores
  # Mary Jane
  execute as @e[type=minecraft:zombie,tag=houseMary,limit=1] run function mc:states/4_setup/place/characters/tp/tp_mary
  # Timmy
  execute as @e[type=minecraft:zombie,tag=houseTimmy,limit=1] run function mc:states/4_setup/place/characters/tp/tp_timmy