# Event Selection
function cm:pages/3_event/menus/menu_events

# Event Generic Options
function cm:pages/3_event/menus/menu_options

# Page Buttons
  # Back
  data modify block ~ ~ ~ Items insert 0 value {Slot:18b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Goto expedition menu"}',"minecraft:custom_model_data":29,"minecraft:custom_data":{isMenu:1b,page:3,selection:2}}}
  # Submit
  execute unless score task AtomicDrill matches 15 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Submit"}',"minecraft:custom_model_data":31,"minecraft:custom_data":{isMenu:1b,page:3,selection:3}}}
  execute if score task AtomicDrill matches 15 if score choice MenuEvent matches 1.. run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Submit"}',"minecraft:custom_model_data":31,"minecraft:custom_data":{isMenu:1b,page:3,selection:3}}}
  execute if score task AtomicDrill matches 15 if score choice MenuEvent matches 0 if score gun ItemsBunker matches 0 if score flashlight ItemsBunker matches 0 if score radio ItemsBunker matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Submit"}',"minecraft:custom_model_data":31,"minecraft:custom_data":{isMenu:1b,page:3,selection:3}}}