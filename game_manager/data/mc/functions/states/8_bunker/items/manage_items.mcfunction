# Notes
  # Items will test for themselves to avoid duplicate placements
  # Since scores cannot be directly placed into armourstand names data is imported from an updating sign atop the bunker
  # Items are displayed diffirently according to their ItemsBunker value, including: -1 (broken), 0 (blank), and 1+ (exists)

# Official
  # Ammo
  execute if score ammo ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=ammo] run function mc:states/8_bunker/items/summon/summon_ammo
  execute as @e[type=minecraft:armor_stand,tag=ammo,limit=1] at @s run function mc:states/8_bunker/items/update/update_ammo
  # Axe
  execute if score axe ItemsBunker matches 2 unless entity @e[type=minecraft:armor_stand,tag=axe] run function mc:states/8_bunker/items/summon/summon_axe
  execute as @e[type=minecraft:armor_stand,tag=axe,limit=1] at @s run function mc:states/8_bunker/items/update/update_axe
  # Boy Scout Handbook
  execute if score boyScoutHandbook ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=boyScoutHandbook] run function mc:states/8_bunker/items/summon/summon_boy_scout_handbook
  execute as @e[type=minecraft:armor_stand,tag=boyScoutHandbook,limit=1] at @s run function mc:states/8_bunker/items/update/update_boy_scout_handbook
  # Bug Spray
  execute if score bugSpray ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=bugSpray] run function mc:states/8_bunker/items/summon/summon_bug_spray
  execute as @e[type=minecraft:armor_stand,tag=bugSpray,limit=1] at @s run function mc:states/8_bunker/items/update/update_bug_spray
  # Cards
  execute if score cards ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=cards] run function mc:states/8_bunker/items/summon/summon_cards
  execute as @e[type=minecraft:armor_stand,tag=cards,limit=1] at @s run function mc:states/8_bunker/items/update/update_cards
  # Checkers
  execute if score checkers ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=checkers] run function mc:states/8_bunker/items/summon/summon_markers
  execute as @e[type=minecraft:armor_stand,tag=checkers,limit=1] at @s run function mc:states/8_bunker/items/update/update_checkers
  # Flashlight
  execute if score flashlight ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=flashlight] run function mc:states/8_bunker/items/summon/summon_flashlight
  execute as @e[type=minecraft:armor_stand,tag=flashlight,limit=1] at @s run function mc:states/8_bunker/items/update/update_flashlight
  # Gas Mask
  execute if score gasMask ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=gasMask] run function mc:states/8_bunker/items/summon/summon_gas_mask
  execute as @e[type=minecraft:armor_stand,tag=gasMask,limit=1] at @s run function mc:states/8_bunker/items/update/update_gas_mask
  # Gun
  execute if score gun ItemsBunker matches 2 unless entity @e[type=minecraft:armor_stand,tag=gun] run function mc:states/8_bunker/items/summon/summon_gun
  execute as @e[type=minecraft:armor_stand,tag=gun,limit=1] at @s run function mc:states/8_bunker/items/update/update_gun
  # Harmonica
  execute if score harmonica ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=harmonica] run function mc:states/8_bunker/items/summon/summon_harmonica
  execute as @e[type=minecraft:armor_stand,tag=harmonica,limit=1] at @s run function mc:states/8_bunker/items/update/update_harmonica
  # Map
  execute if score map ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=map] run function mc:states/8_bunker/items/summon/summon_map
  function mc:states/8_bunker/items/update/update_map
  # Medkit
  execute if score medkit ItemsBunker matches 2 unless entity @e[type=minecraft:armor_stand,tag=medkit] run function mc:states/8_bunker/items/summon/summon_medkit
  execute as @e[type=minecraft:armor_stand,tag=medkit,limit=1] at @s run function mc:states/8_bunker/items/update/update_medkit
  # Padlock
  execute if score padlock ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=padlock] run function mc:states/8_bunker/items/summon/summon_padlock
  execute as @e[type=minecraft:armor_stand,tag=padlock,limit=1] at @s run function mc:states/8_bunker/items/update/update_padlock
  # Radio
  execute if score radio ItemsBunker matches 1 unless entity @e[type=minecraft:armor_stand,tag=radio] run function mc:states/8_bunker/items/summon/summon_radio
  execute as @e[type=minecraft:armor_stand,tag=radio,limit=1] at @s run function mc:states/8_bunker/items/update/update_radio
  # Soup
  execute unless entity @e[type=minecraft:armor_stand,tag=soup1,limit=1] run function mc:states/8_bunker/items/summon/summon_soup
  execute as @e[type=minecraft:armor_stand,tag=soup] at @s run function mc:states/8_bunker/items/update/update_soup
  # Suitcase
  execute if score suitcase ItemsBunker matches 3 unless entity @e[type=minecraft:armor_stand,tag=suitcase] run function mc:states/8_bunker/items/summon/summon_suitcase
  execute as @e[type=minecraft:armor_stand,tag=suitcase,limit=1] at @s run function mc:states/8_bunker/items/update/update_suitcase
  # Water
  execute unless entity @e[type=minecraft:armor_stand,tag=water1,limit=1] run function mc:states/8_bunker/items/summon/summon_water
  execute as @e[type=minecraft:armor_stand,tag=water] at @s run function mc:states/8_bunker/items/update/update_water

# Custom
  # Body Armour
  execute if score armour ItemsBunker matches 3 unless entity @e[type=minecraft:armor_stand,tag=armour] run function mc:states/8_bunker/items/summon/summon_body_armour
  execute as @e[type=minecraft:armor_stand,tag=armour,limit=1] at @s run function mc:states/8_bunker/items/update/update_body_armour

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