# Init Bundle
execute unless data storage minecraft:bundles itemsGained run data modify storage minecraft:bundles itemsGained set value {Slot:4b,id:"minecraft:bundle",count:1,components:{"minecraft:custom_name":'{"text":"Items Gained"}',"minecraft:custom_data":{isMenu:1b,page:0,selection:0}}}

# One Slot
  # Ammo
  execute if score itemId ItemsBundles matches 1 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":1}}
  # BoyScout Handbook
  execute if score itemId ItemsBundles matches 3 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":3}}
  # Bug Spray
  execute if score itemId ItemsBundles matches 4 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":4}}
  # Cards
  execute if score itemId ItemsBundles matches 5 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":5}}
  # Checkers
  execute if score itemId ItemsBundles matches 6 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":6}}
  # Flashlight
  execute if score itemId ItemsBundles matches 7 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":8}}
  # Gas Mask
  execute if score itemId ItemsBundles matches 8 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":9}}
  # Harmonica
  execute if score itemId ItemsBundles matches 10 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":52}}
  # Map
  execute if score itemId ItemsBundles matches 11 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":11}}
  # Padlock
  execute if score itemId ItemsBundles matches 13 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":14}}
  # Radio
  execute if score itemId ItemsBundles matches 14 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":15}}
  # Soup
  execute if score itemId ItemsBundles matches 15 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":16}}
  # Water
  execute if score itemId ItemsBundles matches 17 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":19}}
# Multi Slot
  # Axe
  execute if score itemId ItemsBundles matches 2 if score axe ItemsBunker matches 2 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":2}}
  # Gun
  execute if score itemId ItemsBundles matches 9 if score gun ItemsBunker matches 2 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":10}}
  # Medkit
  execute if score itemId ItemsBundles matches 12 if score medkit ItemsBunker matches 2 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":13}}
  # Suitcase
  execute if score itemId ItemsBundles matches 16 if score suitcase ItemsBunker matches 3 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":17}}
  # Body Armour
  execute if score itemId ItemsBundles matches 18 if score bodyArmour ItemsBunker matches 3 run data modify storage minecraft:bundles itemsGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":20}}