# Notes
  # If only one can or bottle is active when a character portrait is selected both will become active, but if the other slot is void it will deactivate
  # Slots are locked if there are insufficient characters or items
  # count_supplies is kept in items to ensure values change when the chest opens
  # Head set actions are performed in menu_<character> instead of directory_<character> to avoid miscalculations due to delayed updates

# Count Supplies
function cm:pages/page_1/count_supplies

# Character Selection
  # Dolores
  execute if score alive DoloresStatus matches 1 unless score characterSent MenuExplore matches 1 run function cm:pages/page_1/menus/menu_dolores
  execute if score alive DoloresStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:0b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:93,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Dolores","color":"dark_red"}']}}}
  # Mary
  execute if score alive MaryStatus matches 1 unless score characterSent MenuExplore matches 2..3 run function cm:pages/page_1/menus/menu_mary
  execute if score alive MaryStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:98,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Mary","color":"dark_red"}']}}}
  # Ted
  execute if score alive TedStatus matches 1 unless score characterSent MenuExplore matches 4 run function cm:pages/page_1/menus/menu_ted
  execute if score alive TedStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:9b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:107,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Ted","color":"dark_red"}']}}}
  # Timmy
  execute if score alive TimmyStatus matches 1 unless score characterSent MenuExplore matches 5 run function cm:pages/page_1/menus/menu_timmy
  execute if score alive TimmyStatus matches 0 run data modify block 0 54 29 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:104,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires Timmy","color":"dark_red"}']}}}

# Mass Items
  # Soup
    # Toggle
    execute if score soups ItemsBunker >= totalPresent GameStatus if score soupGiven MenuFeed < totalPresent GameStatus run data modify block 0 54 29 Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:37,display:{Name:'{"text":"Keep all soup","color":"gray","bold":true}',Lore:['{"text":"Click to add all","color":"dark_gray","underlined":true}']}}}
    execute if score soups ItemsBunker >= totalPresent GameStatus if score soupGiven MenuFeed >= totalPresent GameStatus run data modify block 0 54 29 Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:38,display:{Name:'{"text":"Give all soup","color":"gray","bold":true}',Lore:['{"text":"Click to remove all","color":"dark_gray","underlined":true}']}}}
    # Lock
    execute if score soups ItemsBunker < totalPresent GameStatus run data modify block 0 54 29 Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires more soup","color":"dark_red"}']}}}

  # Water
    # Toggle
    execute if score waters ItemsBunker >= totalPresent GameStatus if score waterGiven MenuFeed < totalPresent GameStatus run data modify block 0 54 29 Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:79,isMenu:1b,page:1,selection:39,display:{Name:'{"text":"Keep all water","color":"gray","bold":true}',Lore:['{"text":"Click to add all","color":"dark_gray","underlined":true}']}}}
    execute if score waters ItemsBunker >= totalPresent GameStatus if score waterGiven MenuFeed >= totalPresent GameStatus run data modify block 0 54 29 Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19,isMenu:1b,page:1,selection:40,display:{Name:'{"text":"Give all water","color":"gray","bold":true}',Lore:['{"text":"Click to remove all","color":"dark_gray","underlined":true}']}}}
    # Lock
    execute if score waters ItemsBunker < totalPresent GameStatus run data modify block 0 54 29 Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:105,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires more water","color":"dark_red"}']}}}

# Page Buttons
  # Back
  data modify block 0 54 29 Items insert 0 value {Slot:18b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:29,isMenu:1b,page:1,selection:2,display:{Name:'{"text":"Goto notices","color":"gray","bold":true}',Lore:['{"text":"Click to return","color":"dark_gray","underlined":true}']}}}
  # Next
  execute unless score task AtomicDrill matches 12 unless score task AtomicDrill matches 14 unless score task AtomicDrill matches 16 run data modify block 0 54 29 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:1,selection:1,display:{Name:'{"text":"Goto expedition","color":"gray","bold":true}',Lore:['{"text":"Click to continue","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 14 if score waterGiven MenuFeed >= totalPresent GameStatus run data modify block 0 54 29 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:30,isMenu:1b,page:1,selection:1,display:{Name:'{"text":"Goto expedition","color":"gray","bold":true}',Lore:['{"text":"Click to continue","color":"dark_gray","underlined":true}']}}}
  # Submit
  execute if score task AtomicDrill matches 12 run data modify block 0 54 29 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:1,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}
  execute if score task AtomicDrill matches 16 if score giveMedkit MenuFeed matches 1.. run data modify block 0 54 29 Items insert 0 value {Slot:26b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:31,isMenu:1b,page:1,selection:3,display:{Name:'{"text":"Submit","color":"gray","bold":true}',Lore:['{"text":"Click to submit","color":"dark_gray","underlined":true}']}}}