# Event Selection
function cm:pages/page_3/menus/menu_events

# Page Buttons
  # Back
  data modify block -8 -48 -9 Items insert 0 value {Slot:18b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:29,isMenu:1b,page:3,selection:2,display:{Name:'{"text":"Goto expedition","color":"gray","bold":true}',Lore:['{"text":"Click to return","color":"dark_gray","underlined":true}']}}}
  # Submit
  execute unless score task AtomicDrill matches 15 run data modify block -8 -48 -9 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:3,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 15 if score choice MenuEvent matches 1.. run data modify block -8 -48 -9 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:3,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 15 if score choice MenuEvent matches 0 if score gun ItemsBunker matches 0 if score flashlight ItemsBunker matches 0 if score radio ItemsBunker matches 0 run data modify block -8 -48 -9 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:3,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}