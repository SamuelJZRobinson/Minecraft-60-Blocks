# Neighbourhood
  # Force Without Map
  execute if score map ItemsBunker matches 0 run scoreboard players set mapSelect MenuExplore 1
  # Toggle
  execute if score mapSelect MenuExplore matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:36,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Neighbourhood","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}','{"text":"Near","color":"gray"}']}}}
  execute if score mapSelect MenuExplore matches 0.. run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:85,isMenu:1b,page:2,selection:12,display:{Name:'{"text":"Neighbourhood","color":"gray","bold":true}',Lore:['{"text":"Near","color":"gray"}']}}}

# Load Locations
execute if score map ItemsBunker matches 1 run function cm:pages/page_2/menus/menu_expedition_maps
execute if score map ItemsBunker matches ..0 run function cm:pages/page_2/menus/menu_expedition_maps_lock