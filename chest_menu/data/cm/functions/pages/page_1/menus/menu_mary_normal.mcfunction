# Player Head
  # Set Head
  data modify block 0 54 29 Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:12,isMenu:1b,page:1,selection:11,display:{Name:'{"text":"Mary","color":"gray","bold":true}'}}}
  # Set Action
    # 1 soup (w/none), 1 water (w/none)
    execute if score itemStatus ChestMenuFeed matches 0..3 if score maryGiveCan ChestMenuFeed matches 1 if score maryGiveBottle ChestMenuFeed matches 1 run scoreboard players set maryHead ChestMenuFeed 1
    # 1 soup, 0 water
    execute unless score itemStatus ChestMenuFeed matches 1..3 if score maryGiveCan ChestMenuFeed matches 1 if score maryGiveBottle ChestMenuFeed matches 0 run scoreboard players set maryHead ChestMenuFeed 2
    # 0 to 1 soup (w/none), 0 water
    execute if score itemStatus ChestMenuFeed matches 2 if score maryGiveCan ChestMenuFeed matches 0..1 if score maryGiveBottle ChestMenuFeed matches 0 run scoreboard players set maryHead ChestMenuFeed 3
    # 0 soup (w/none), 1 water
    execute if score itemStatus ChestMenuFeed matches 2..3 if score maryGiveCan ChestMenuFeed matches 0 if score maryGiveBottle ChestMenuFeed matches 1 run scoreboard players set maryHead ChestMenuFeed 4
    # 0 soup, 1 water
    execute unless score itemStatus ChestMenuFeed matches 1..3 if score maryGiveCan ChestMenuFeed matches 0 if score maryGiveBottle ChestMenuFeed matches 1 run scoreboard players set maryHead ChestMenuFeed 5
    # 0 soup, 0 to 1 water (w/none)
    execute if score itemStatus ChestMenuFeed matches 1 if score maryGiveCan ChestMenuFeed matches 0 if score maryGiveBottle ChestMenuFeed matches 0..1 run scoreboard players set maryHead ChestMenuFeed 6
    # 1 soup, 0 water (w/none)
    execute unless score itemStatus ChestMenuFeed matches 2 if score itemStatus ChestMenuFeed matches 1..3 if score maryGiveCan ChestMenuFeed matches 1 if score maryGiveBottle ChestMenuFeed matches 0 run scoreboard players set maryHead ChestMenuFeed 7
    # 0 soup, 0 water
    execute if score itemStatus ChestMenuFeed matches 0 if score maryGiveCan ChestMenuFeed matches 0 if score maryGiveBottle ChestMenuFeed matches 0 run scoreboard players set maryHead ChestMenuFeed 8
    # 0 soup (w/none), 0 water none (w/none)
    execute if score itemStatus ChestMenuFeed matches 3 if score maryGiveCan ChestMenuFeed matches 0 if score maryGiveBottle ChestMenuFeed matches 0 run scoreboard players set maryHead ChestMenuFeed 9
  # Action Lore
  execute if score maryHead ChestMenuFeed matches 1 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to remove both","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 2 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to add water","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 3 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to add water","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 4 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to remove water","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 5 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to add soup","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 6 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to add soup","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 7 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to remove soup","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 8 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to add both","color":"dark_gray","underlined":true}'
  execute if score maryHead ChestMenuFeed matches 9 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Requires more items","color":"dark_red"}'
  # Status Effects Lore
  execute if score fatigued MaryStatus matches 1 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Fatigued","color":"gold"}'
  execute if score soupLevel MaryStatus matches 1 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Hungry","color":"gold"}'
  execute if score soupLevel MaryStatus matches 2 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Starvation","color":"gold"}'
  execute if score injuredLevel MaryStatus matches 1 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Hurt","color":"gold"}'
  execute if score injuredLevel MaryStatus matches 2 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Agony","color":"gold"}'
  execute if score crazy MaryStatus matches 1 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Crazy","color":"gold"}'
  execute if score sick MaryStatus matches 1 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Sick","color":"gold"}'
  execute if score waterLevel MaryStatus matches 1 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Thirsty","color":"gold"}'
  execute if score waterLevel MaryStatus matches 2 run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Dehydration","color":"gold"}'
  execute if score tired MaryStatus matches 1.. run data modify block 0 54 29 Items[{Slot:5b}].tag.display.Lore append value '{"text":"Tired","color":"gold"}'

# Soup
  # Toggle
  execute if score maryGiveCan ChestMenuFeed matches 0 unless score cansGiven ChestMenuFeed >= cans ItemsBunker run data modify block 0 54 29 Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:13,display:{Name:'{"text":"Keep soup","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score maryGiveCan ChestMenuFeed matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:14,display:{Name:'{"text":"Give soup","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score maryGiveCan ChestMenuFeed matches 0 if score cansGiven ChestMenuFeed >= cans ItemsBunker run data modify block 0 54 29 Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires more soup","color":"dark_red"}']}}}

# Water
  # Toggle
  execute if score maryGiveBottle ChestMenuFeed matches 0 unless score bottlesGiven ChestMenuFeed >= bottles ItemsBunker run data modify block 0 54 29 Items insert 0 value {Slot:7b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:79,isMenu:1b,page:1,selection:17,display:{Name:'{"text":"Keep water","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score maryGiveBottle ChestMenuFeed matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:7b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19,isMenu:1b,page:1,selection:18,display:{Name:'{"text":"Give water","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score maryGiveBottle ChestMenuFeed matches 0 if score bottlesGiven ChestMenuFeed >= bottles ItemsBunker run data modify block 0 54 29 Items insert 0 value {Slot:7b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:105,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires more water","color":"dark_red"}']}}}

# Medkit
  # Toggle
  execute if score medkit ItemsBunker matches 2 if score giveMedkit ChestMenuFeed matches 2 run data modify block 0 54 29 Items insert 0 value {Slot:8b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:13,isMenu:1b,page:1,selection:20,display:{Name:'{"text":"Give medkit","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit ChestMenuFeed matches 0.. if score injured MaryStatus matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:8b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:19,display:{Name:'{"text":"Keep medkit","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit ChestMenuFeed matches 0.. if score sick MaryStatus matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:8b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:19,display:{Name:'{"text":"Keep medkit","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score medkit ItemsBunker matches ..0 if score injured MaryStatus matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:8b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires medkit","color":"dark_red"}']}}}
  execute if score medkit ItemsBunker matches ..0 if score sick MaryStatus matches 1 run data modify block 0 54 29 Items insert 0 value {Slot:8b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires medkit","color":"dark_red"}']}}}