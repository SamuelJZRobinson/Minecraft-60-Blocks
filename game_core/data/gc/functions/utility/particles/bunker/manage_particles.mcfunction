# Characters
  # Sick
  execute if score alive DoloresStatus matches 1 if score isSick DoloresStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerDolores] positioned ~-0.25 ~1.5 ~0.25 run function gc:utility/particles/bunker/sick
  execute if score alive MaryStatus matches 1 if score isSick MaryStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerMary] positioned ~0.25 ~1.5 ~0.5 run function gc:utility/particles/bunker/sick
  execute if score alive TedStatus matches 1 if score isSick TedStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerTed] positioned ~ ~1.5 ~0.25 run function gc:utility/particles/bunker/sick
  execute if score alive TimmyStatus matches 1 if score isSick TimmyStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerTimmy] positioned ~0.25 ~0.75 ~ run function gc:utility/particles/bunker/sick

# Items
  # Radio
  execute if score radio ItemsBunker matches -1 at @e[type=minecraft:armor_stand,tag=radio] run function gc:utility/particles/bunker/broken_radio