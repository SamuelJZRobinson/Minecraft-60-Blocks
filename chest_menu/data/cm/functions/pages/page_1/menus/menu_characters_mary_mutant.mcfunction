# Set Head
data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:28,isMenu:1b,page:1,selection:11,display:{Name:'{"text":"Mutant Mary","color":"gray","bold":true}'}}}
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
  execute if score maryMultiAction MenuFeed matches -1 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Need more supplies","color":"dark_red"}'
  execute if score maryMultiAction MenuFeed matches 1 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to add soup","color":"dark_gray","underlined":true}'
  execute if score maryMultiAction MenuFeed matches 2 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to remove soup","color":"dark_gray","underlined":true}'
# Soup
  # Toggle
  execute if score maryGiveSoup MenuFeed matches 0 unless score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:13,display:{Name:'{"text":"Keep soup","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score maryGiveSoup MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:14,display:{Name:'{"text":"Give soup","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score maryGiveSoup MenuFeed matches 0 if score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more soup","color":"dark_red"}']}}}
# Status Lore
data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Mutated","color":"gold"}'