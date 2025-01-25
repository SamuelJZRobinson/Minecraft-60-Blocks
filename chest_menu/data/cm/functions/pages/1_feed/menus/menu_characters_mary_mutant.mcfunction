# Set Head
data modify block ~ ~ ~ Items insert 0 value {Slot:9b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Mutant Mary"}',"minecraft:custom_model_data":28,"minecraft:custom_data":{isMenu:1b,page:1,selection:11}}}

# Multi Soup And Water
  # Enable
    # Soup off
    execute if score maryGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 1.. run scoreboard players set maryMultiAction MenuFeed 1
  # Disable
    # Soup on
    execute if score maryGiveSoup MenuFeed matches 1 run scoreboard players set maryMultiAction MenuFeed 2
  # No supplies
    # No Soup
    execute if score maryGiveSoup MenuFeed matches 0 if score soupNotGiven MenuFeed matches 0 run scoreboard players set maryMultiAction MenuFeed -1
  # Multi Lore
  execute if score maryMultiAction MenuFeed matches -1 run data modify block ~ ~ ~ Items[{Slot:9b}].components.minecraft:lore append value '{"text":"Need more supplies","color":"dark_red"}'
  execute if score maryMultiAction MenuFeed matches 1 run data modify block ~ ~ ~ Items[{Slot:9b}].components.minecraft:lore append value '{"text":"Add soup","color":"dark_gray"}'
  execute if score maryMultiAction MenuFeed matches 2 run data modify block ~ ~ ~ Items[{Slot:9b}].components.minecraft:lore append value '{"text":"Remove soup","color":"dark_gray"}'
# Soup
  # Toggle
  execute if score maryGiveSoup MenuFeed matches 0 unless score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:10b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Soup"}',"minecraft:custom_model_data":76,"minecraft:custom_data":{isMenu:1b,page:1,selection:13}}}
  execute if score maryGiveSoup MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:10b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gold","bold":true,"text":"Soup"}',"minecraft:lore":['{"color":"gold","text":"Selected"}'],"minecraft:custom_model_data":16,"minecraft:custom_data":{isMenu:1b,page:1,selection:14}}}
  # Lock
  execute if score maryGiveSoup MenuFeed matches 0 if score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:10b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need more soup"}'],"minecraft:custom_model_data":102,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}
# Status Lore
data modify block ~ ~ ~ Items[{Slot:9b}].components.minecraft:lore append value '{"text":"Mutated","color":"gold"}'