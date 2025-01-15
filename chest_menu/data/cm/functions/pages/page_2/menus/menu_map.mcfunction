# Neighbourhood
  # Force Without Map
  execute if score map ItemsBunker matches 0 run scoreboard players set mapSelect MenuExplore 1
  # Toggle
  execute if score mapSelect MenuExplore matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:36,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Visit neighbourhood","color":"gray","bold":true}'}}}
  execute if score mapSelect MenuExplore matches 0.. run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:85,isMenu:1b,page:2,selection:13,display:{Name:'{"text":"Ignore neighbourhood","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Distance: short","color":"dark_green"}'

# Load Locations
execute if score map ItemsBunker matches 1 run function cm:pages/page_2/menus/menu_expedition_maps
execute if score map ItemsBunker matches ..0 run function cm:pages/page_2/menus/menu_expedition_maps_lock