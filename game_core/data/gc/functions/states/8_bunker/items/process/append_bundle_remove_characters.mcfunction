# Init Bundle
execute unless data storage minecraft:bundles charactersLost run data modify storage minecraft:bundles charactersLost set value {Slot:14b,Count:1b,tag:{Items:[],selection:0,display:{Name:'{"text":"Characters Lost"}'},page:0,isMenu:1b},id:"minecraft:bundle"}

# Characters
  # Ted
  execute if score itemId ItemsBundles matches 21 run data modify storage minecraft:bundles charactersLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:27}}
  # Dolores
  execute if score itemId ItemsBundles matches 19 run data modify storage minecraft:bundles charactersLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:7}}
  # Mary
  execute if score itemId ItemsBundles matches 20 run data modify storage minecraft:bundles charactersLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:12}}
  # Timmy
  execute if score itemId ItemsBundles matches 22 run data modify storage minecraft:bundles charactersLost.tag.Items append value {id:"minecraft:saddle",Count:1b,tag:{CustomModelData:18}}