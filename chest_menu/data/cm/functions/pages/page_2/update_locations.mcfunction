# Bank
  # Toggle
  execute if score locationSelect ChestMenuExplore matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:34,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Visit bank","color":"gray","bold":true}'}}}
  execute if score locationSelect ChestMenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:83,isMenu:1b,page:3,selection:12,display:{Name:'{"text":"Ignore bank","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Distance: short","color":"dark_green"}'

# School
  # Toggle
  execute if score locationSelect ChestMenuExplore matches 3 run data modify block 0 54 29 Items insert 0 value {Slot:7b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:121,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Visit school","color":"gray","bold":true}'}}}
  execute if score locationSelect ChestMenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:7b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:122,isMenu:1b,page:3,selection:14,display:{Name:'{"text":"Ignore school","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block 0 54 29 Items[{Slot:7b}].tag.display.Lore append value '{"text":"Distance: short","color":"dark_green"}'

# Supermarket
  # Toggle
  execute if score locationSelect ChestMenuExplore matches 4 run data modify block 0 54 29 Items insert 0 value {Slot:8b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:37,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Visit supermarket","color":"gray","bold":true}'}}}
  execute if score locationSelect ChestMenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:8b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:86,isMenu:1b,page:3,selection:15,display:{Name:'{"text":"Ignore supermarket","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block 0 54 29 Items[{Slot:8b}].tag.display.Lore append value '{"text":"Distance: short","color":"dark_green"}'

# Bowling Alley
  # Toggle
  execute if score locationSelect ChestMenuExplore matches 5 run data modify block 0 54 29 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:35,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Visit bowling alley","color":"gray","bold":true}'}}}
  execute if score locationSelect ChestMenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:84,isMenu:1b,page:3,selection:16,display:{Name:'{"text":"Ignore bowling alley","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block 0 54 29 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Distance: medium","color":"dark_green"}'

# Hospital
  # Toggle
  execute if score locationSelect ChestMenuExplore matches 6 run data modify block 0 54 29 Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:115,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Visit hospital","color":"gray","bold":true}'}}}
  execute if score locationSelect ChestMenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:116,isMenu:1b,page:3,selection:17,display:{Name:'{"text":"Ignore hospital","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block 0 54 29 Items[{Slot:15b}].tag.display.Lore append value '{"text":"Distance: medium","color":"dark_green"}'

# Metro
  # Toggle
  execute if score locationSelect ChestMenuExplore matches 7 run data modify block 0 54 29 Items insert 0 value {Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:118,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Visit metro","color":"gray","bold":true}'}}}
  execute if score locationSelect ChestMenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:119,isMenu:1b,page:3,selection:18,display:{Name:'{"text":"Ignore metro","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block 0 54 29 Items[{Slot:16b}].tag.display.Lore append value '{"text":"Distance: long","color":"dark_green"}'

# Warehouse
  # Toggle
  execute if score locationSelect ChestMenuExplore matches 8 run data modify block 0 54 29 Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:124,isMenu:1b,page:3,selection:0,display:{Name:'{"text":"Visit warehouse","color":"gray","bold":true}'}}}
  execute if score locationSelect ChestMenuExplore matches 0.. run data modify block 0 54 29 Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:125,isMenu:1b,page:3,selection:19,display:{Name:'{"text":"Ignore warehouse","color":"gray","bold":true}',Lore:['{"text":"Click to visit","color":"dark_gray","underlined":true}']}}}
  # Lore
  data modify block 0 54 29 Items[{Slot:17b}].tag.display.Lore append value '{"text":"Distance: long","color":"dark_green"}'