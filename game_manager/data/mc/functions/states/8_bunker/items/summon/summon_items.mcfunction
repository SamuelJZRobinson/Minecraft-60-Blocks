# Official Items
  # Ammo
  execute if score ammo ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=ammo] run function mc:states/8_bunker/items/summon/summon_ammo
  # Axe
  execute if score axe ItemsBunker matches 2 unless entity @e[team=Items,type=minecraft:armor_stand,tag=axe] run function mc:states/8_bunker/items/summon/summon_axe
  # Boy Scout Handbook
  execute if score boyScoutHandbook ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=boyScoutHandbook] run function mc:states/8_bunker/items/summon/summon_boy_scout_handbook
  # Bug Spray
  execute if score bugSpray ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=bugSpray] run function mc:states/8_bunker/items/summon/summon_bug_spray
  # Cards
  execute if score cards ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=cards] run function mc:states/8_bunker/items/summon/summon_cards
  # Checkers
  execute if score checkers ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=checkers] run function mc:states/8_bunker/items/summon/summon_checkers
  # Flashlight
  execute if score flashlight ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=flashlight] run function mc:states/8_bunker/items/summon/summon_flashlight
  # Gas Mask
  execute if score gasMask ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=gasMask] run function mc:states/8_bunker/items/summon/summon_gas_mask
  # Gun
  execute if score gun ItemsBunker matches 2 unless entity @e[team=Items,type=minecraft:armor_stand,tag=gun] run function mc:states/8_bunker/items/summon/summon_gun
  # Harmonica
  execute if score harmonica ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=harmonica] run function mc:states/8_bunker/items/summon/summon_harmonica
  # Map
  execute if score map ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=map] run function mc:states/8_bunker/items/summon/summon_map
  # Medkit
  execute if score medkit ItemsBunker matches 2 unless entity @e[team=Items,type=minecraft:armor_stand,tag=medkit] run function mc:states/8_bunker/items/summon/summon_medkit
  # Padlock
  execute if score padlock ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=padlock] run function mc:states/8_bunker/items/summon/summon_padlock
  # Radio
  execute if score radio ItemsBunker matches 1 unless entity @e[team=Items,type=minecraft:armor_stand,tag=radio] run function mc:states/8_bunker/items/summon/summon_radio
  # Soup
  execute unless entity @e[team=Items,type=minecraft:armor_stand,tag=soup] run function mc:states/8_bunker/items/summon/summon_soup
  # Suitcase
  execute if score suitcase ItemsBunker matches 3 unless entity @e[team=Items,type=minecraft:armor_stand,tag=suitcase] run function mc:states/8_bunker/items/summon/summon_suitcase
  # Water
  execute unless entity @e[team=Items,type=minecraft:armor_stand,tag=water] run function mc:states/8_bunker/items/summon/summon_water

# Custom Items
execute if score armour ItemsBunker matches 3 unless entity @e[team=Items,type=minecraft:armor_stand,tag=bodyArmour] run function mc:states/8_bunker/items/summon/summon_body_armour