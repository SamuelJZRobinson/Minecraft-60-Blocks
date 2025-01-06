# Official
  # Ammo
  execute as @e[type=minecraft:armor_stand,tag=ammo,limit=1] at @s run function mc:states/8_bunker/items/update/update_ammo
  # Axe
  execute as @e[type=minecraft:armor_stand,tag=axe,limit=1] at @s run function mc:states/8_bunker/items/update/update_axe
  # Boy Scout Handbook
  execute as @e[type=minecraft:armor_stand,tag=boyScoutHandbook,limit=1] at @s run function mc:states/8_bunker/items/update/update_boy_scout_handbook
  # Bug Spray
  execute as @e[type=minecraft:armor_stand,tag=bugSpray,limit=1] at @s run function mc:states/8_bunker/items/update/update_bug_spray
  # Cards
  execute as @e[type=minecraft:armor_stand,tag=cards,limit=1] at @s run function mc:states/8_bunker/items/update/update_cards
  # Checkers
  execute as @e[type=minecraft:armor_stand,tag=checkers,limit=1] at @s run function mc:states/8_bunker/items/update/update_checkers
  # Flashlight
  execute as @e[type=minecraft:armor_stand,tag=flashlight,limit=1] at @s run function mc:states/8_bunker/items/update/update_flashlight
  # Gas Mask
  execute as @e[type=minecraft:armor_stand,tag=gasMask,limit=1] at @s run function mc:states/8_bunker/items/update/update_gas_mask
  # Gun
  execute as @e[type=minecraft:armor_stand,tag=gun,limit=1] at @s run function mc:states/8_bunker/items/update/update_gun
  # Harmonica
  execute as @e[type=minecraft:armor_stand,tag=harmonica,limit=1] at @s run function mc:states/8_bunker/items/update/update_harmonica
  # Map
  function mc:states/8_bunker/items/update/update_map
  # Medkit
  execute as @e[type=minecraft:armor_stand,tag=medkit,limit=1] at @s run function mc:states/8_bunker/items/update/update_medkit
  # Padlock
  execute as @e[type=minecraft:armor_stand,tag=padlock,limit=1] at @s run function mc:states/8_bunker/items/update/update_padlock
  # Radio
  execute as @e[type=minecraft:armor_stand,tag=radio,limit=1] at @s run function mc:states/8_bunker/items/update/update_radio
  # Soup
  execute unless entity @e[type=minecraft:armor_stand,tag=soup1,limit=1] run function mc:states/8_bunker/items/summon/summon_soup
  execute as @e[type=minecraft:armor_stand,tag=soup] at @s run function mc:states/8_bunker/items/update/update_soup
  # Suitcase
  execute as @e[type=minecraft:armor_stand,tag=suitcase,limit=1] at @s run function mc:states/8_bunker/items/update/update_suitcase
  # Water
  execute unless entity @e[type=minecraft:armor_stand,tag=water1,limit=1] run function mc:states/8_bunker/items/summon/summon_water
  execute as @e[type=minecraft:armor_stand,tag=water] at @s run function mc:states/8_bunker/items/update/update_water

# Custom
  # Body Armour
  execute as @e[type=minecraft:armor_stand,tag=armour,limit=1] at @s run function mc:states/8_bunker/items/update/update_body_armour