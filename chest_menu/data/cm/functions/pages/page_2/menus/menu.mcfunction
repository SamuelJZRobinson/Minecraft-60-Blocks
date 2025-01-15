# Notes
  # Players cannot prepare an expedition on the first day so expeditionReady is -1

# Prepare Expedition
execute if score expeditionReady MenuExplore matches 0 run function cm:pages/page_2/menus/menu_expedition_prepare

# Expedition Ready
execute if score expeditionReady MenuExplore matches 1 if score characterSent MenuExplore matches 0 run function cm:pages/page_2/menus/menu_expedition_ready

# Icons
function cm:pages/page_2/menus/menu_icons

# Page Buttons
  # Back
  data modify block ~ ~ ~ Items insert 0 value {Slot:18b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:29,isMenu:1b,page:2,selection:2,display:{Name:'{"text":"Goto feeding","color":"gray","bold":true}',Lore:['{"text":"Click to return","color":"dark_gray","underlined":true}']}}}
  # Next
  execute if score event MenuEvent matches 1.. unless score task AtomicDrill matches 13 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:2,selection:1,display:{Name:'{"text":"Goto event","color":"gray","bold":true}',Lore:['{"text":"Click to proceed","color":"dark_gray","underlined":true}']}}}
  # Submit
  execute unless score event MenuEvent matches 1.. unless score task AtomicDrill matches 13 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:2,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 13 unless score characterSelect MenuExplore matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:2,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}