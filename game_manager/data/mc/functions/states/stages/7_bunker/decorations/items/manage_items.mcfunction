# Notes
  # Items will test for themselves to avoid duplicate placements
  # Since scores cannot be directly placed into armourstand names data is imported from an updating sign atop the bunker
  # Items are displayed diffirently according to their ItemsBunker value, including: -1 (broken), 0 (blank), and 1+ (exists)

# Official Items
  # Ammo
  execute if score ammo ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerAmmo] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_ammo
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerAmmo,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_ammo
  # Axe
  execute if score axe ItemsBunker matches 2 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerAxe] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_axe
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerAxe,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_axe
  # Boy Scout Handbook
  execute if score boyScoutHandbook ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerHandbook] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_boy_scout_handbook
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerHandbook,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_boy_scout_handbook
  # Bug Spray
  execute if score bugSpray ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerBugSpray] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_bug_spray
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerBugSpray,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_bug_spray
  # Cards
  execute if score cards ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerCards] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_cards
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerCards,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_cards
  # Checkers
  execute if score checkers ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerCheckers] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_checkers
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerCheckers,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_checkers
  # Flashlight
  execute if score flashlight ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerFlashlight] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_flashlight
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerFlashlight,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_flashlight
  # Gas Mask
  execute if score gasMask ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerGasMask] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_gas_mask
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerGasMask,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_gas_mask
  # Gun
  execute if score gun ItemsBunker matches 2 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerGun] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_gun
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerGun,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_gun
  # Harmonica
  execute if score harmonica ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerHarmonica] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_harmonica
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerHarmonica,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_harmonica
  # Map
  execute if score map ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerMap] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_map
  function mc:states/stages/7_bunker/decorations/items/update/update_map
  # Medkit
  execute if score medkit ItemsBunker matches 2 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerMedkit] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_medkit
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerMedkit,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_medkit
  # Padlock
  execute if score padlock ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerPadlock] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_padlock
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerPadlock,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_padlock
  # Radio
  execute if score radio ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerRadio] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_radio
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerRadio,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_radio
  # Soup
  execute unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerSoup1] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_soup
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerSoup] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_soup
  # Suitcase
  execute if score suitcase ItemsBunker matches 3 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerSuitcase] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_suitcase
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerSuitcase,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_suitcase
  # Water
  execute unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerWater1] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_water
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerWater] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_water

# Custom Items
  # Body Armour
  execute if score armour ItemsBunker matches 3 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerArmour] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_body_armour
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerArmour,limit=1] at @s run function mc:states/stages/7_bunker/decorations/items/update/update_body_armour

# Decorations
  # Bloody Hand Print
  execute if score isEvil GameStatus matches 0 as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerHandprint] at @s run kill @s
  execute if score isEvil GameStatus matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bunkerHandprint] run summon minecraft:armor_stand 0.90 56.00 36.07 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","bunkerHandprint"],DisabledSlots:4144959,Rotation:[-180F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:127}}]}

# Soup And Bottle Counters
  # Merge External Signs
  data merge block 1 60 32 {Text1:'{"text":"Water supply:"}',Text2:'[{"text":"Bottles: ","color":"gold"},{"score":{"name":"bottlesInt","objective":"RealCount"}},{"text":"."},{"score":{"name":"bottlesFloat","objective":"RealCount"}}]',Text3:'{"text":"Food supply:"}',Text4:'[{"text":"Cans: ","color":"gold"},{"score":{"name":"cansInt","objective":"RealCount"}},{"text":"."},{"score":{"name":"cansFloat","objective":"RealCount"}}]'}
  # Spawn Bottle Labels
  execute unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bottleTitle] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_counters
  # Modify Labels
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=bottleCount] at @s run data modify entity @s CustomName set from block 1 60 32 Text2
  execute as @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:armor_stand,tag=canCount] at @s run data modify entity @s CustomName set from block 1 60 32 Text4