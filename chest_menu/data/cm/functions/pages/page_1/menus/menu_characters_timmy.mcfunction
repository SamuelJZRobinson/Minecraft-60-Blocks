# Head
data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:18,isMenu:1b,page:1,selection:29,display:{Name:'{"text":"Timmy","color":"gray","bold":true}'}}}

# Multi Soup And Water
  # Enable
    # Soup off, water off
    execute if score timmyGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 1.. if score timmyGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 1.. run scoreboard players set timmyMultiAction MenuFeed 1
    # Soup off, water on
    execute if score timmyGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 1.. if score timmyGiveWater MenuFeed matches 1 run scoreboard players set timmyMultiAction MenuFeed 2
    # Soup on, water off
    execute if score timmyGiveSoup MenuFeed matches 1 if score timmyGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 1.. run scoreboard players set timmyMultiAction MenuFeed 3
  # Disable
    # Soup on, water on
    execute if score timmyGiveSoup MenuFeed matches 1 if score timmyGiveWater MenuFeed matches 1 run scoreboard players set timmyMultiAction MenuFeed 4
  # No supplies
    # No Soup
    execute if score timmyGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 0 run scoreboard players set timmyMultiAction MenuFeed -1
    # No Water
    execute if score timmyGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 0 run scoreboard players set timmyMultiAction MenuFeed -1
  # Multi Lore
  execute if score timmyMultiAction MenuFeed matches -1 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Need more supplies","color":"dark_red"}'
  execute if score timmyMultiAction MenuFeed matches 1 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Add soup and water","color":"dark_gray"}'
  execute if score timmyMultiAction MenuFeed matches 2 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Add soup","color":"dark_gray"}'
  execute if score timmyMultiAction MenuFeed matches 3 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Add water","color":"dark_gray"}'
  execute if score timmyMultiAction MenuFeed matches 4 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Remove soup and water","color":"dark_gray"}'
# Soup
  # Toggle
  execute if score timmyGiveSoup MenuFeed matches 0 unless score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:31,display:{Name:'{"text":"Soup","color":"gray","bold":true}'}}}
  execute if score timmyGiveSoup MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:32,display:{Name:'{"text":"Soup","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  # Lock
  execute if score timmyGiveSoup MenuFeed matches 0 if score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:15b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more soup","color":"dark_red"}']}}}
# Water
  # Toggle
  execute if score timmyGiveWater MenuFeed matches 0 unless score waterGiven MenuFeed >= waters ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:79,isMenu:1b,page:1,selection:33,display:{Name:'{"text":"Water","color":"gray","bold":true}'}}}
  execute if score timmyGiveWater MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {CustomModelData:19,Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19,isMenu:1b,page:1,selection:34,display:{Name:'{"text":"Water","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  # Lock
  execute if score timmyGiveWater MenuFeed matches 0 if score waterGiven MenuFeed >= waters ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:16b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:105,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more water","color":"dark_red"}']}}}

# Medkit
  # Toggle
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 4 run data modify block ~ ~ ~ Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:13,isMenu:1b,page:1,selection:36,display:{Name:'{"text":"Medkit","color":"gray","bold":true}'}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score isInjured TimmyStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:35,display:{Name:'{"text":"Medkit","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score isSick TimmyStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:35,display:{Name:'{"text":"Medkit","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  # Lock
  execute if score medkit ItemsBunker matches ..0 if score isInjured TimmyStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need medkit","color":"dark_red"}']}}}
  execute if score medkit ItemsBunker matches ..0 if score isSick TimmyStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:17b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need medkit","color":"dark_red"}']}}}

# Status Lore
  # Fatigued
  execute if score isFatigued TimmyStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Fatigued","color":"gold"}'
  # Soup
  execute if score soup TimmyStatus > HUNGER_AMOUNT_CRITICAL StatusLevels if score soup TimmyStatus <= HUNGER_AMOUNT_DANGER StatusLevels run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Hungry","color":"gold"}'
  execute if score soup TimmyStatus <= HUNGER_AMOUNT_CRITICAL StatusLevels run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Starvation","color":"gold"}'
  # Injured
  execute if score isInjured TimmyStatus matches 1 if score injuredDays TimmyStatus < INJURED_DAYS_DANGER StatusLevels run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Hurt","color":"gold"}'
  execute if score isInjured TimmyStatus matches 1 if score injuredDays TimmyStatus >= INJURED_DAYS_DANGER StatusLevels run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Agony","color":"gold"}'
  # Crazy
  execute if score isCrazy TimmyStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Crazy","color":"gold"}'
  # Sick
  execute if score isSick TimmyStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Sick","color":"gold"}'
  # Water
  execute if score water TimmyStatus > THIRST_AMOUNT_CRITICAL StatusLevels if score water TimmyStatus <= THIRST_AMOUNT_DANGER StatusLevels run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Thirsty","color":"gold"}'
  execute if score water TimmyStatus <= THIRST_AMOUNT_CRITICAL StatusLevels run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Dehydration","color":"gold"}'
  # Tired
  execute if score isTired TimmyStatus matches 1.. run data modify block ~ ~ ~ Items[{Slot:14b}].tag.display.Lore append value '{"text":"Tired","color":"gold"}'