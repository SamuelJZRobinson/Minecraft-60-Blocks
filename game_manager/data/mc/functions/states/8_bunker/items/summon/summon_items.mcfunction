#  Notes
  # Killing and summoning entities without checks is likely more efficient as it would require analysing all enities and killing opposite states for each item.

# Official Items
  # Ammo
  execute if score ammo ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_ammo
  execute if score ammo ItemsBunker matches 0 run kill @e[tag=ammo]
  execute if score ammo ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_ammo_broken
  # Axe
  execute if score axe ItemsBunker matches 2 run function mc:states/8_bunker/items/summon/summon_axe
  execute if score axe ItemsBunker matches 0 run kill @e[tag=axe]
  execute if score axe ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_axe_broken
  # Boy Scout Handbook
  execute if score boyScoutHandbook ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_boy_scout_handbook
  execute if score boyScoutHandbook ItemsBunker matches 0 run kill @e[tag=handbook]
  execute if score boyScoutHandbook ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_boy_scout_handbook_broken
  # Bug Spray
  execute if score bugSpray ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_bug_spray
  execute if score bugSpray ItemsBunker matches 0 run kill @e[tag=bugSpray]
  execute if score bugSpray ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_bug_spray_broken
  # Cards
  execute if score cards ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_cards
  execute if score cards ItemsBunker matches 0 run kill @e[tag=cards]
  execute if score cards ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_cards_broken
  # Checkers
  execute if score checkers ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_checkers
  execute if score checkers ItemsBunker matches 0 run kill @e[tag=checkers]
  execute if score checkers ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_checkers_broken
  # Flashlight
  execute if score flashlight ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_flashlight
  execute if score flashlight ItemsBunker matches 0 run kill @e[tag=flashlight]
  execute if score flashlight ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_flashlight_broken
  # Gas Mask
  execute if score gasMask ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_gas_mask
  execute if score gasMask ItemsBunker matches 0 run kill @e[tag=gasMask]
  execute if score gasMask ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_gas_mask_broken
  # Gun
  execute if score gun ItemsBunker matches 2 run function mc:states/8_bunker/items/summon/summon_gun
  execute if score gun ItemsBunker matches 0 run kill @e[tag=gun]
  execute if score gun ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_gun_broken
  # Harmonica
  execute if score harmonica ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_harmonica
  execute if score harmonica ItemsBunker matches 0 run kill @e[tag=harmonica]
  execute if score harmonica ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_harmonica_broken
  # Map
  execute if score map ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_map
  execute if score map ItemsBunker matches 0 run kill @e[tag=map]
  execute if score map ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_map_broken
  # Medkit
  execute if score medkit ItemsBunker matches 2 run function mc:states/8_bunker/items/summon/summon_medkit
  execute if score medkit ItemsBunker matches 0 run kill @e[tag=medkit]
  execute if score medkit ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_medkit_broken
  # Padlock
  execute if score padlock ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_padlock
  execute if score padlock ItemsBunker matches 0 run kill @e[tag=padlock]
  execute if score padlock ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_padlock_broken
  # Radio
  execute if score radio ItemsBunker matches 1 run function mc:states/8_bunker/items/summon/summon_radio
  execute if score radio ItemsBunker matches 0 run kill @e[tag=radio]
  execute if score radio ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_radio_broken
  # Soup
  function mc:states/8_bunker/items/summon/summon_soup
  # Suitcase
  execute if score suitcase ItemsBunker matches 3 run function mc:states/8_bunker/items/summon/summon_suitcase
  execute if score suitcase ItemsBunker matches 0 run kill @e[tag=suitcase]
  execute if score suitcase ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_suitcase_broken
  # Water
  function mc:states/8_bunker/items/summon/summon_water

# Custom Items
  # Body Armour
  execute if score bodyArmour ItemsBunker matches 3 run function mc:states/8_bunker/items/summon/summon_body_armour
  execute if score bodyArmour ItemsBunker matches 0 run kill @e[tag=bodyArmour]
  execute if score bodyArmour ItemsBunker matches -1 run function mc:states/8_bunker/items/summon/summon_body_armour_broken