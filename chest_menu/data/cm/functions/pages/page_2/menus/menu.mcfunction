# Notes
  # Since players cannot prepare an expedition on the first day Expedition-Prepared is set to -1

# Show Expedition GUI If Valid
execute if score expeditionPrepared ChestMenuExplore matches 1 if score characterSent ChestMenuExplore matches 0 run function cm:pages/page_2/menus/menu_expedition

# Prepare Expedition
  # Toggle
  execute if score prepare ChestMenuExplore matches 0 if score expeditionPrepared ChestMenuExplore matches 0 unless score characterSent ChestMenuExplore matches 1.. run data modify block 0 54 29 Items insert 0 value {Slot:13b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:113,isMenu:1b,page:2,selection:25,display:{Name:'{"text":"Ignore Expedition","color":"gray","bold":true}',Lore:['{"text":"Click to schedule","color":"dark_gray","underlined":true}']}}}
  execute if score prepare ChestMenuExplore matches 1 if score expeditionPrepared ChestMenuExplore matches 0 unless score characterSent ChestMenuExplore matches 1.. run data modify block 0 54 29 Items insert 0 value {Slot:13b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:112,isMenu:1b,page:2,selection:24,display:{Name:'{"text":"Schedule Expedition","color":"gray","bold":true}',Lore:['{"text":"Click to ignore","color":"dark_gray","underlined":true}']}}}

# Icons
  # Alert
  execute if score characterSent ChestMenuExplore matches 1.. run data modify block 0 54 29 Items insert 0 value {Slot:20b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:40,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Expedition Ongoing","color":"red","bold":true}',Lore:['{"text":"Cannot send someone","color":"dark_red"}']}}}
  execute if score banditAlert ChestMenuExplore matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:39,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Hostile Area","color":"yellow","bold":true}',Lore:['{"text":"Ambushes are common","color":"gold"}']}}}
  execute if score falloutAlert ChestMenuExplore matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:22b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:41,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Radioactive Fallout","color":"yellow","bold":true}',Lore:['{"text":"Sickness is common","color":"gold"}']}}}
  # Protection
  execute if score mutantProtection ChestMenuExplore matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:38,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Mutant Promise","color":"aqua","bold":true}',Lore:['{"text":"Prevents a raid","color":"blue"}']}}}
  execute if score padlock ItemsBunker matches 1 run function cm:pages/page_2/menus/menu_padlock
  execute if score padlockProtection ChestMenuExplore matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:24b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:56,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Tough Padlock","color":"aqua","bold":true}',Lore:['{"text":"Prevents raids during expeditions","color":"blue"}']}}}

# Page Buttons
  # Back
  data modify block 0 54 29 Items insert 0 value {Slot:18b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:29,isMenu:1b,page:2,selection:2,display:{Name:'{"text":"Goto feeding","color":"gray","bold":true}',Lore:['{"text":"Click to return","color":"dark_gray","underlined":true}']}}}
  # Next
  execute if score event ChestMenuEvent matches 1.. unless score task AtomicDrill matches 13 run data modify block 0 54 29 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:2,selection:1,display:{Name:'{"text":"Goto event","color":"gray","bold":true}',Lore:['{"text":"Click to proceed","color":"dark_gray","underlined":true}']}}}
  # Submit
  execute unless score event ChestMenuEvent matches 1.. unless score task AtomicDrill matches 13 run data modify block 0 54 29 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:2,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 13 unless score characterSelect ChestMenuExplore matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:2,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}