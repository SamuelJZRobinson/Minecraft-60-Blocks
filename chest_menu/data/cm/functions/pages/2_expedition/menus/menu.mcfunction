# Notes
  # Players cannot prepare an expedition on the first day so expeditionReady is -1
  # Expeditions after the first one after task 15 break the code and they are not necessary so it's best to avoid them.

# Prepare Expedition
execute unless score task AtomicDrill matches 15.. if score expeditionReady MenuExpedition matches 0 run function cm:pages/2_expedition/menus/menu_expedition_prepare

# Expedition Ready
execute if score expeditionReady MenuExpedition matches 1 if score characterSent MenuExpedition matches 0 run function cm:pages/2_expedition/menus/menu_expedition_ready

# Icons
function cm:pages/2_expedition/menus/menu_icons

# Page Buttons
  # Back
  data modify block ~ ~ ~ Items insert 0 value {Slot:18b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:29,isMenu:1b,page:2,selection:2,display:{Name:'{"text":"Goto feed menu","color":"gray","bold":true}'}}}
  # Next
  execute if score event MenuEvent matches 1.. unless score task AtomicDrill matches 13 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:2,selection:1,display:{Name:'{"text":"Goto event menu","color":"gray","bold":true}'}}}
  # Submit
  execute unless score event MenuEvent matches 1.. unless score task AtomicDrill matches 13 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:2,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}'}}}
  execute if score task AtomicDrill matches 13 unless score characterSelect MenuExpedition matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:2,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}'}}}