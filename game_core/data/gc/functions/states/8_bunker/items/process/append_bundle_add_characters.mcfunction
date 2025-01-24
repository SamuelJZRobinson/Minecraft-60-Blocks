# Init Bundle
execute unless data storage minecraft:bundles charactersGained run data modify storage minecraft:bundles charactersGained set value {Slot:5b,count:1,tag:{Items:[],selection:0,display:{Name:'{"text":"Characters Gained"}'},page:0,isMenu:1b},id:"minecraft:bundle"}

# Multi Slot
  # Ted
  execute if score itemId ItemsBundles matches 21 if score build TedStatus matches 3 run data modify storage minecraft:bundles charactersGained.tag.Items append value {id:"minecraft:saddle",count:1,tag:{CustomModelData:27}}
  # Dolores
  execute if score itemId ItemsBundles matches 19 if score build DoloresStatus matches 2 run data modify storage minecraft:bundles charactersGained.tag.Items append value {id:"minecraft:saddle",count:1,tag:{CustomModelData:7}}
  # Mary
  execute if score itemId ItemsBundles matches 20 if score build MaryStatus matches 3 run data modify storage minecraft:bundles charactersGained.tag.Items append value {id:"minecraft:saddle",count:1,tag:{CustomModelData:12}}
  # Timmy
  execute if score itemId ItemsBundles matches 22 if score build TimmyStatus matches 2 run data modify storage minecraft:bundles charactersGained.tag.Items append value {id:"minecraft:saddle",count:1,tag:{CustomModelData:18}}