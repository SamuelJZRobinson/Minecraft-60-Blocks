# Count Supplies
function cm:pages/1_feed/count/count_supplies

# Character Selection
function cm:pages/1_feed/menus/menu_characters

# Mass Food
function cm:pages/1_feed/menus/menu_mass_food

# Page Buttons
  # Back
  data modify block ~ ~ ~ Items insert 0 value {Slot:18b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Goto notices menu"}',"minecraft:custom_model_data":29,"minecraft:custom_data":{isMenu:1b,page:1,selection:2}}}
  # Next
  execute unless score task AtomicDrill matches 12 unless score task AtomicDrill matches 14 unless score task AtomicDrill matches 16 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Goto expedition menu"}',"minecraft:custom_model_data":30,"minecraft:custom_data":{isMenu:1b,page:1,selection:1}}}
  execute if score task AtomicDrill matches 14 if score waterGiven MenuFeed >= totalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Goto expedition menu"}',"minecraft:custom_model_data":30,"minecraft:custom_data":{isMenu:1b,page:1,selection:1}}}
  # Atomic Drill Submit
  execute if score task AtomicDrill matches 12 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Submit"}',"minecraft:custom_model_data":31,"minecraft:custom_data":{isMenu:1b,page:1,selection:3}}}
  execute if score task AtomicDrill matches 16 if score giveMedkit MenuFeed matches 1.. run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","text":"Submit"}',"minecraft:custom_model_data":31,"minecraft:custom_data":{isMenu:1b,page:1,selection:3}}}