# Notes
  # While mutated Mary is immune to thirst and consumes one soup at a time

# Player Head
  # Set Head
  data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:28,isMenu:1b,page:1,selection:11,display:{Name:'{"text":"Mutant Mary","color":"gray","bold":true}'}}}
  # Set Action
    # 0 soup
    execute unless score itemStatus MaryStatus matches 2..3 if score maryGiveSoup MenuFeed matches 0 run scoreboard players set maryHead MenuFeed 5
    # 1 soup
    execute if score maryGiveSoup MenuFeed matches 1 run scoreboard players set maryHead MenuFeed 7
    # 0 soup (w/none)
    execute if score itemStatus MenuFeed matches 2..3 if score maryGiveSoup MenuFeed matches 0 run scoreboard players set maryHead MenuFeed 9
  # Action Lore
  execute if score maryHead MenuFeed matches 5 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to add soup","color":"dark_gray","underlined":true}'
  execute if score maryHead MenuFeed matches 7 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Click to remove soup","color":"dark_gray","underlined":true}'
  execute if score maryHead MenuFeed matches 9 run data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Requires more items","color":"dark_red"}'
  # Status Effects Lore
  data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Never impaired or thirsty","color":"dark_green"}'
  data modify block ~ ~ ~ Items[{Slot:5b}].tag.display.Lore append value '{"text":"Mutated","color":"gold"}'

# Soup
  # Toggle
  execute if score maryGiveSoup MenuFeed matches 0 unless score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:13,display:{Name:'{"text":"Keep soup","color":"gray","bold":true}',Lore:['{"text":"Click to add","color":"dark_gray","underlined":true}']}}}
  execute if score maryGiveSoup MenuFeed matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:14,display:{Name:'{"text":"Give soup","color":"gray","bold":true}',Lore:['{"text":"Click to remove","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score maryGiveSoup MenuFeed matches 0 if score soupGiven MenuFeed >= soups ItemsBunker run data modify block ~ ~ ~ Items insert 0 value {Slot:6b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Requires more soup","color":"dark_red"}']}}}