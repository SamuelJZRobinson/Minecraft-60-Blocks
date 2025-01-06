# Notes
  # Since scores cannot be directly placed into armourstand names data is imported from an updating sign atop the bunker
  # Items are displayed diffirently according to their ItemsBunker value, including: -1 (broken), 0 (blank), and 1+ (exists)

# Summon Items
function mc:states/8_bunker/items/summon/summon_items

# Update Items
function mc:states/8_bunker/items/update/update_items

# Decorations
  # Bloody Hand Print
  execute if score isEvil GameStatus matches 0 as @e[type=minecraft:armor_stand,tag=bunkerHandprint] at @s run kill @s
  execute if score isEvil GameStatus matches 1 unless entity @e[type=minecraft:armor_stand,tag=bunkerHandprint,limit=1] run summon minecraft:armor_stand 0.90 56.00 36.07 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","bunkerHandprint"],DisabledSlots:4144959,Rotation:[-180F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:127}}]}

# Soup And Bottle Counters
  # Merge External Signs
  data merge block 1 60 32 {Text1:'{"text":"Water supply:"}',Text2:'[{"text":"Bottles: ","color":"gold"},{"score":{"name":"bottlesInt","objective":"RealCount"}},{"text":"."},{"score":{"name":"bottlesFloat","objective":"RealCount"}}]',Text3:'{"text":"Food supply:"}',Text4:'[{"text":"Cans: ","color":"gold"},{"score":{"name":"cansInt","objective":"RealCount"}},{"text":"."},{"score":{"name":"cansFloat","objective":"RealCount"}}]'}
  # Spawn Bottle Labels
  execute unless entity @e[type=minecraft:armor_stand,tag=bottleTitle] run function mc:states/8_bunker/items/summon/summon_counters
  # Modify Labels
  execute as @e[type=minecraft:armor_stand,tag=bottleCount] at @s run data modify entity @s CustomName set from block 1 60 32 Text2
  execute as @e[type=minecraft:armor_stand,tag=canCount] at @s run data modify entity @s CustomName set from block 1 60 32 Text4