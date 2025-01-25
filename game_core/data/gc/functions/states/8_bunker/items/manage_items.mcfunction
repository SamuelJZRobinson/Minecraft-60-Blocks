# Summon Items
execute positioned 1 -48 -15 run function gc:states/8_bunker/items/summon/summon_items

# Decorations
  # # Bloody Hand Print
  # execute if score isEvil GameStatus matches 0 as @e[type=minecraft:armor_stand,tag=bunkerHandprint] at @s run kill @s
  # execute if score isEvil GameStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerHandprint,limit=1] run summon armor_stand 0.90 56.00 36.07 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","bunkerHandprint"],DisabledSlots:4144959,Rotation:[-180F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",count:1,tag:{CustomModelData:127}}]}