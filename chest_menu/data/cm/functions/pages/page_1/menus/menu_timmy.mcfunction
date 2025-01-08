# Player Head
  # Set Head
  data modify block -8 -48 -9 Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:18,isMenu:1b,page:1,selection:29,display:{Name:'{"text":"Timmy","color":"gray","bold":true}'}}}
  # Set Action
    # 1 soup (w/none), 1 water (w/none)
    execute if score itemStatus MenuFeed matches 0..3 if score timmyGiveSoup MenuFeed matches 1 if score timmyGiveWater MenuFeed matches 1 run scoreboard players set timmyHead MenuFeed 1
    # 1 soup, 0 water
    execute unless score itemStatus MenuFeed matches 1..3 if score timmyGiveSoup MenuFeed matches 1 if score timmyGiveWater MenuFeed matches 0 run scoreboard players set timmyHead MenuFeed 2
    # 0 to 1 soup (w/none), 0 water
    execute if score itemStatus MenuFeed matches 2 if score timmyGiveSoup MenuFeed matches 0..1 if score timmyGiveWater MenuFeed matches 0 run scoreboard players set timmyHead MenuFeed 3
    # 0 soup (w/none), 1 water
    execute if score itemStatus MenuFeed matches 2..3 if score timmyGiveSoup MenuFeed matches 0 if score timmyGiveWater MenuFeed matches 1 run scoreboard players set timmyHead MenuFeed 4
    # 0 soup, 1 water
    execute unless score itemStatus MenuFeed matches 1..3 if score timmyGiveSoup MenuFeed matches 0 if score timmyGiveWater MenuFeed matches 1 run scoreboard players set timmyHead MenuFeed 5
    # 0 soup, 0 to 1 water (w/none)
    execute if score itemStatus MenuFeed matches 1 if score timmyGiveSoup MenuFeed matches 0 if score timmyGiveWater MenuFeed matches 0..1 run scoreboard players set timmyHead MenuFeed 6
    # 1 soup, 0 water (w/none)
    execute unless score itemStatus MenuFeed matches 2 if score itemStatus MenuFeed matches 1..3 if score timmyGiveSoup MenuFeed matches 1 if score timmyGiveWater MenuFeed matches 0 run scoreboard players set timmyHead MenuFeed 7
    # 0 soup, 0 water
    execute if score itemStatus MenuFeed matches 0 if score timmyGiveSoup MenuFeed matches 0 if score timmyGiveWater MenuFeed matches 0 run scoreboard players set timmyHead MenuFeed 8
    # 0 soup (w/none), 0 water none (w/none)
    execute if score itemStatus MenuFeed matches 3 if score timmyGiveSoup MenuFeed matches 0 if score timmyGiveWater MenuFeed matches 0 run scoreboard players set timmyHead MenuFeed 9
  # Action Lore
  execute if score timmyHead MenuFeed matches 1 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to remove both","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 2 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to add water","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 3 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to add water","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 4 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to remove water","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 5 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to add soup","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 6 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to add soup","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 7 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to remove soup","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 8 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Click to add both","color":"dark_gray","underlined":true}'
  execute if score timmyHead MenuFeed matches 9 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Requires more items","color":"dark_red"}'
  # Status Effects Lore
  execute if score fatigued TimmyStatus matches 1 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Fatigued","color":"gold"}'
  execute if score soupLevel TimmyStatus matches 1 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Hungry","color":"gold"}'
  execute if score soupLevel TimmyStatus matches 2 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Starvation","color":"gold"}'
  execute if score injuredLevel TimmyStatus matches 1 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Hurt","color":"gold"}'
  execute if score injuredLevel TimmyStatus matches 2 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Agony","color":"gold"}'
  execute if score crazy TimmyStatus matches 1 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Crazy","color":"gold"}'
  execute if score sick TimmyStatus matches 1 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Sick","color":"gold"}'
  execute if score waterLevel TimmyStatus matches 1 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Thirsty","color":"gold"}'
  execute if score waterLevel TimmyStatus matches 2 run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Dehydration","color":"gold"}'
  execute if score tired TimmyStatus matches 1.. run data modify block -8 -48 -9 Items[{Slot:14b}].tag.display.Lore append value '{"text":"Tired","color":"gold"}'

# Soup
  # Toggle
  execute if score timmyGiveSoup MenuFeed matches 0 unless score soupGiven MenuFeed >= soups ItemsBunker run data modify block -8 -48 -9 Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:31,display:{Name:'{"text":"Keep soup","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score timmyGiveSoup MenuFeed matches 1 run data modify block -8 -48 -9 Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:32,display:{Name:'{"text":"Give soup","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score timmyGiveSoup MenuFeed matches 0 if score soupGiven MenuFeed >= soups ItemsBunker run data modify block -8 -48 -9 Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires more soup","color":"dark_red"}']}}}

# Water
  # Toggle
  execute if score timmyGiveWater MenuFeed matches 0 unless score waterGiven MenuFeed >= waters ItemsBunker run data modify block -8 -48 -9 Items insert 0 value {Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:79,isMenu:1b,page:1,selection:33,display:{Name:'{"text":"Keep water","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score timmyGiveWater MenuFeed matches 1 run data modify block -8 -48 -9 Items insert 0 value {CustomModelData:19,Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19,isMenu:1b,page:1,selection:34,display:{Name:'{"text":"Give water","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score timmyGiveWater MenuFeed matches 0 if score waterGiven MenuFeed >= waters ItemsBunker run data modify block -8 -48 -9 Items insert 0 value {Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:105,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires more water","color":"dark_red"}']}}}

# Medkit
  # Toggle
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 4 run data modify block -8 -48 -9 Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:13,isMenu:1b,page:1,selection:36,display:{Name:'{"text":"Give medkit","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score injured TimmyStatus matches 1 run data modify block -8 -48 -9 Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:35,display:{Name:'{"text":"Keep medkit","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score sick TimmyStatus matches 1 run data modify block -8 -48 -9 Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:35,display:{Name:'{"text":"Keep medkit","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score medkit ItemsBunker matches ..0 if score injured TimmyStatus matches 1 run data modify block -8 -48 -9 Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires medkit","color":"dark_red"}']}}}
  execute if score medkit ItemsBunker matches ..0 if score sick TimmyStatus matches 1 run data modify block -8 -48 -9 Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires medkit","color":"dark_red"}']}}}