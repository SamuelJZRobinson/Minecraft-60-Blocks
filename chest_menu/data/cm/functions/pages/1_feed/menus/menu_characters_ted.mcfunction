# Head
data modify block ~ ~ ~ Items insert 0 value {Slot:9b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:27,isMenu:1b,page:1,selection:21,display:{Name:'{"text":"Ted","color":"gray","bold":true}'}}}

# Multi Soup And Water
  # Enable
    # Soup off, water off
    execute if score tedGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 1.. if score tedGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 1.. run scoreboard players set tedMultiAction MenuFeed 1
    # Soup off, water on
    execute if score tedGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 1.. if score tedGiveWater MenuFeed matches 1 run scoreboard players set tedMultiAction MenuFeed 2
    # Soup on, water off
    execute if score tedGiveSoup MenuFeed matches 1 if score tedGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 1.. run scoreboard players set tedMultiAction MenuFeed 3
  # Disable
    # Soup on, water on
    execute if score tedGiveSoup MenuFeed matches 1 if score tedGiveWater MenuFeed matches 1 run scoreboard players set tedMultiAction MenuFeed 4
  # No supplies
    # No Soup
    execute if score tedGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 0 run scoreboard players set tedMultiAction MenuFeed -1
    # No Water
    execute if score tedGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 0 run scoreboard players set tedMultiAction MenuFeed -1
  # Multi Lore
  execute if score tedMultiAction MenuFeed matches -1 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Need more supplies","color":"dark_red"}'
  execute if score tedMultiAction MenuFeed matches 1 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Add soup and water","color":"dark_gray"}'
  execute if score tedMultiAction MenuFeed matches 2 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Add soup","color":"dark_gray"}'
  execute if score tedMultiAction MenuFeed matches 3 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Add water","color":"dark_gray"}'
  execute if score tedMultiAction MenuFeed matches 4 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Remove soup and water","color":"dark_gray"}'
# Soup
  # Toggle
  execute if score tedGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 1.. run data modify block ~ ~ ~ Items insert 0 value {Slot:10b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:23,display:{Name:'{"text":"Soup","color":"gray","bold":true}'}}}
  execute if score tedGiveSoup MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:10b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:24,display:{Name:'{"text":"Soup","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  # Lock
  execute if score tedGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:10b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more soup","color":"dark_red"}']}}}
# Water
  # Toggle
  execute if score tedGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 1.. run data modify block ~ ~ ~ Items insert 0 value {Slot:11b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:79,isMenu:1b,page:1,selection:25,display:{Name:'{"text":"Water","color":"gray","bold":true}'}}}
  execute if score tedGiveWater MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:11b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19,isMenu:1b,page:1,selection:26,display:{Name:'{"text":"Water","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  # Lock
  execute if score tedGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:11b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:105,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more water","color":"dark_red"}']}}}

# Medkit
  # Toggle
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 3 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:13,isMenu:1b,page:1,selection:28,display:{Name:'{"text":"Medkit","color":"gray","bold":true}'}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score isInjured TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:27,display:{Name:'{"text":"Medkit","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score isSick TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:73,isMenu:1b,page:1,selection:27,display:{Name:'{"text":"Medkit","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  # Lock
  execute if score medkit ItemsBunker matches ..0 if score isInjured TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need medkit","color":"dark_red"}']}}}
  execute if score medkit ItemsBunker matches ..0 if score isSick TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:99,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need medkit","color":"dark_red"}']}}}

# Status Lore
  # Fatigued
  execute if score isFatigued TedStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Fatigued","color":"gold"}'
  # Soup
  execute if score soup TedStatus > HUNGER_AMOUNT_CRITICAL CharactersLevels if score soup TedStatus <= HUNGER_AMOUNT_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Hungry","color":"gold"}'
  execute if score soup TedStatus <= HUNGER_AMOUNT_CRITICAL CharactersLevels run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Starvation","color":"gold"}'
  # Injured
  execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus < INJURED_DAYS_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Hurt","color":"gold"}'
  execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus >= INJURED_DAYS_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Agony","color":"gold"}'
  # Crazy
  execute if score isCrazy TedStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Crazy","color":"gold"}'
  # Sick
  execute if score isSick TedStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Sick","color":"gold"}'
  # Water
  execute if score water TedStatus > THIRST_AMOUNT_CRITICAL CharactersLevels if score water TedStatus <= THIRST_AMOUNT_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Thirsty","color":"gold"}'
  execute if score water TedStatus <= THIRST_AMOUNT_CRITICAL CharactersLevels run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Dehydration","color":"gold"}'
  # Tired
  execute if score isTired TedStatus matches 1.. run data modify block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore append value '{"text":"Tired","color":"gold"}'