# Summon Characters
  # Dolores
  execute if score alive DoloresStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerDolores] run function mc:states/8_bunker/characters/summon/summon_dolores
  # Ted
  execute if score alive TedStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerTed] run function mc:states/8_bunker/characters/summon/summon_ted
  # Mary Jane
  execute if score alive MaryStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerMary] run function mc:states/8_bunker/characters/summon/summon_mary
  # Timmy
  execute if score alive TimmyStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerTimmy] run function mc:states/8_bunker/characters/summon/summon_timmy