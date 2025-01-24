# Init Bundle
execute unless data storage minecraft:bundles charactersGained run data modify storage minecraft:bundles charactersGained set value {Slot:5b,id:"minecraft:bundle",count:1,components:{"minecraft:custom_name":'{"text":"Characters Gained"}',"minecraft:custom_data":{isMenu:1b,page:0,selection:0}}}

# Multi Slot
  # Ted
  execute if score itemId ItemsBundles matches 21 if score build TedStatus matches 3 run data modify storage minecraft:bundles charactersGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":27}}
  # Dolores
  execute if score itemId ItemsBundles matches 19 if score build DoloresStatus matches 2 run data modify storage minecraft:bundles charactersGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":7}}
  # Mary
  execute if score itemId ItemsBundles matches 20 if score build MaryStatus matches 3 run data modify storage minecraft:bundles charactersGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":12}}
  # Timmy
  execute if score itemId ItemsBundles matches 22 if score build TimmyStatus matches 2 run data modify storage minecraft:bundles charactersGained.components.minecraft:bundle_contents append value {id:"minecraft:saddle",count:1,components:{"minecraft:custom_model_data":18}}