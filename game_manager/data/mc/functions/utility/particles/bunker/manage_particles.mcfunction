# Characters
execute if score alive DoloresStatus matches 1 if score sick DoloresStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerDolores] positioned ~0.35 ~1.5 ~-0.35 run function mc:utility/particles/bunker/sick
execute if score alive MaryStatus matches 1 if score sick MaryStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerMary] positioned ~-0.25 ~1.5 ~-0.35 run function mc:utility/particles/bunker/sick
execute if score alive TedStatus matches 1 if score sick TedStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerTed] positioned ~ ~1.5 ~-0.35 run function mc:utility/particles/bunker/sick
execute if score alive TimmyStatus matches 1 if score sick TimmyStatus matches 1 at @e[type=minecraft:armor_stand,tag=bunkerTimmy] positioned ~-0.25 ~0.75 ~ run function mc:utility/particles/bunker/sick
# Items
execute if score radio ItemsBunker matches -1 at @e[type=minecraft:armor_stand,tag=radio] run function mc:utility/particles/bunker/broken_radio