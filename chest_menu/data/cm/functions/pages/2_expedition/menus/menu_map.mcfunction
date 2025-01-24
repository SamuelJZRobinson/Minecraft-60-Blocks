# Neighbourhood 
  # Force Location
  execute if score map ItemsBunker matches ..0 run scoreboard players set mapSelect MenuExpedition 1
  # Toggle
  execute if score mapSelect MenuExpedition matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"text":"Neighbourhood","color":"gold","bold":true}',"minecraft:lore":['{"text":"Selected","color":"gold"}','{"text":"Near","color":"gray"}'],"minecraft:custom_model_data":36,"minecraft:custom_data":{isMenu:1b,page:2,selection:0}}}
  execute if score mapSelect MenuExpedition matches 0.. run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"text":"Neighbourhood","color":"gray","bold":true}',"minecraft:lore":['{"text":"Near","color":"gray"}'],"minecraft:custom_model_data":85,"minecraft:custom_data":{isMenu:1b,page:2,selection:12}}}

# Map
  # Load Locations
  execute if score map ItemsBunker matches 1 run function cm:pages/2_expedition/menus/menu_expedition_maps
  # Lock Locations
  execute if score map ItemsBunker matches ..0 run function cm:pages/2_expedition/menus/menu_expedition_maps_lock