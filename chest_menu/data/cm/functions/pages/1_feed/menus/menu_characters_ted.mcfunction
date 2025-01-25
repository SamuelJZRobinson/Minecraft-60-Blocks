# Head
data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Ted"}',"minecraft:custom_model_data":27,"minecraft:custom_data":{isMenu:1b,page:1,selection:21}}}

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
  execute if score tedMultiAction MenuFeed matches -1 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Need more supplies","color":"dark_red"}'
  execute if score tedMultiAction MenuFeed matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Add soup and water","color":"dark_gray"}'
  execute if score tedMultiAction MenuFeed matches 2 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Add soup","color":"dark_gray"}'
  execute if score tedMultiAction MenuFeed matches 3 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Add water","color":"dark_gray"}'
  execute if score tedMultiAction MenuFeed matches 4 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Remove soup and water","color":"dark_gray"}'
# Soup
  # Toggle
  execute if score tedGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 1.. run data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Soup"}',"minecraft:custom_model_data":76,"minecraft:custom_data":{isMenu:1b,page:1,selection:23}}}
  execute if score tedGiveSoup MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gold","bold":true,"text":"Soup"}',"minecraft:lore":['{"color":"gold","text":"Selected"}'],"minecraft:custom_model_data":16,"minecraft:custom_data":{isMenu:1b,page:1,selection:24}}}
  # Lock
  execute if score tedGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need more soup"}'],"minecraft:custom_model_data":102,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}
# Water
  # Toggle
  execute if score tedGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 1.. run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Water"}',"minecraft:custom_model_data":79,"minecraft:custom_data":{isMenu:1b,page:1,selection:25}}}
  execute if score tedGiveWater MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gold","bold":true,"text":"Water"}',"minecraft:lore":['{"color":"gold","text":"Selected"}'],"minecraft:custom_model_data":19,"minecraft:custom_data":{isMenu:1b,page:1,selection:26}}}
  # Lock
  execute if score tedGiveWater MenuFeed matches 0 if score waterNotGiven MenuFeed matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need more water"}'],"minecraft:custom_model_data":105,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}

# Medkit
  # Toggle
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 3 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Medkit"}',"minecraft:custom_model_data":13,"minecraft:custom_data":{isMenu:1b,page:1,selection:28}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score isInjured TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gold","bold":true,"text":"Medkit"}',"minecraft:lore":['{"color":"gold","text":"Selected"}'],"minecraft:custom_model_data":73,"minecraft:custom_data":{isMenu:1b,page:1,selection:27}}}
  execute if score medkit ItemsBunker matches 2 if score giveMedkit MenuFeed matches 0.. if score isSick TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gold","bold":true,"text":"Medkit"}',"minecraft:lore":['{"color":"gold","text":"Selected"}'],"minecraft:custom_model_data":73,"minecraft:custom_data":{isMenu:1b,page:1,selection:27}}}
  # Lock
  execute if score medkit ItemsBunker matches ..0 if score isInjured TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need medkit"}'],"minecraft:custom_model_data":99,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}
  execute if score medkit ItemsBunker matches ..0 if score isSick TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need medkit"}'],"minecraft:custom_model_data":99,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}

# Status Lore
  # Fatigued
  execute if score isFatigued TedStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Fatigued","color":"gold"}'
  # Soup
  execute if score soup TedStatus > HUNGER_AMOUNT_CRITICAL CharactersLevels if score soup TedStatus <= HUNGER_AMOUNT_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Hungry","color":"gold"}'
  execute if score soup TedStatus <= HUNGER_AMOUNT_CRITICAL CharactersLevels run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Starvation","color":"gold"}'
  # Injured
  execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus < INJURED_DAYS_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Hurt","color":"gold"}'
  execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus >= INJURED_DAYS_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Agony","color":"gold"}'
  # Crazy
  execute if score isCrazy TedStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Crazy","color":"gold"}'
  # Sick
  execute if score isSick TedStatus matches 1 run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Sick","color":"gold"}'
  # Water
  execute if score water TedStatus > THIRST_AMOUNT_CRITICAL CharactersLevels if score water TedStatus <= THIRST_AMOUNT_DANGER CharactersLevels run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Thirsty","color":"gold"}'
  execute if score water TedStatus <= THIRST_AMOUNT_CRITICAL CharactersLevels run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Dehydration","color":"gold"}'
  # Tired
  execute if score isTired TedStatus matches 1.. run data modify block ~ ~ ~ Items[{Slot:0b}].components.minecraft:lore append value '{"text":"Tired","color":"gold"}'