# Init Bundle
execute unless data storage minecraft:bundles charactersLost run data modify storage minecraft:bundles charactersLost set value {Slot:14b,id:"minecraft:bundle",count:1,components:{"minecraft:custom_name":'{"text":"Characters Lost"}',"minecraft:custom_data":{isMenu:1b,page:0,selection:0}}}

# Characters
  # Ted
  execute if score itemId ItemsBundles matches 21 run data modify storage minecraft:bundles charactersLost.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":27}}
  # Dolores
  execute if score itemId ItemsBundles matches 19 run data modify storage minecraft:bundles charactersLost.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":7}}
  # Mary
  execute if score itemId ItemsBundles matches 20 run data modify storage minecraft:bundles charactersLost.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":12}}
  # Timmy
  execute if score itemId ItemsBundles matches 22 run data modify storage minecraft:bundles charactersLost.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":18}}