# Init Bundle
execute unless data storage minecraft:bundles itemsLost run data modify storage minecraft:bundles itemsLost set value {Slot:13b,Count:1b,tag:{Items:[],selection:0,display:{Name:'{"text":"Items Lost"}'},page:0,isMenu:1b},id:"minecraft:bundle"}

# One Slot
  # Ammo
  execute if score itemId ItemsBundles matches 1 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:1}}
  # BoyScout Handbook
  execute if score itemId ItemsBundles matches 3 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:3}}
  # Bug Spray
  execute if score itemId ItemsBundles matches 4 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:4}}
  # Cards
  execute if score itemId ItemsBundles matches 5 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:5}}
  # Checkers
  execute if score itemId ItemsBundles matches 6 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:6}}
  # Flashlight
  execute if score itemId ItemsBundles matches 7 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:8}}
  # Gas Mask
  execute if score itemId ItemsBundles matches 8 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:9}}
  # Harmonica
  execute if score itemId ItemsBundles matches 10 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:52}}
  # Map
  execute if score itemId ItemsBundles matches 11 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:11}}
  # Padlock
  execute if score itemId ItemsBundles matches 13 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:14}}
  # Radio
  execute if score itemId ItemsBundles matches 14 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:15}}
  # Soup
  execute if score itemId ItemsBundles matches 15 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}
  # Water
  execute if score itemId ItemsBundles matches 17 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}
# Multi Slot
  # Axe
  execute if score itemId ItemsBundles matches 2 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:2}}
  # Gun
  execute if score itemId ItemsBundles matches 9 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:10}}
  # Medkit
  execute if score itemId ItemsBundles matches 12 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:13}}
  # Suitcase
  execute if score itemId ItemsBundles matches 16 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:17}}
  # Body Armour
  execute if score itemId ItemsBundles matches 18 run data modify storage minecraft:bundles itemsLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:20}}