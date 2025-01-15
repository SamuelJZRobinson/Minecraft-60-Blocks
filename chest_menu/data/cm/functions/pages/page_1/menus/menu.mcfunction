# Count Supplies
function cm:pages/page_1/count/count_supplies

# Character Selection
function cm:pages/page_1/menus/menu_characters

# Mass Food
function cm:pages/page_1/menus/menu_mass_food

# Page Buttons
  # Back
  data modify block ~ ~ ~ Items insert 0 value {Slot:18b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:29,isMenu:1b,page:1,selection:2,display:{Name:'{"text":"Goto notices","color":"gray","bold":true}',Lore:['{"text":"Click to return","color":"dark_gray","underlined":true}']}}}
  # Next
  execute unless score task AtomicDrill matches 12 unless score task AtomicDrill matches 14 unless score task AtomicDrill matches 16 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:1,selection:1,display:{Name:'{"text":"Goto expedition","color":"gray","bold":true}',Lore:['{"text":"Click to continue","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 14 if score waterGiven MenuFeed >= totalPresent GameStatus run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:1,selection:1,display:{Name:'{"text":"Goto expedition","color":"gray","bold":true}',Lore:['{"text":"Click to continue","color":"dark_gray","underlined":true}']}}}
  # Submit
  execute if score task AtomicDrill matches 12 run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:1,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 16 if score giveMedkit MenuFeed matches 1.. run data modify block ~ ~ ~ Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:1,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}