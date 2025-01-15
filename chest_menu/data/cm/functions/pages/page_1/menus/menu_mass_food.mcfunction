# Adjust totalPresent For Mutant Mary
execute if score isMutant MaryStatus matches 1 run scoreboard players operation tempTotalPresent GameStatus = totalPresent GameStatus
execute if score isMutant MaryStatus matches 1 run scoreboard players remove tempTotalPresent GameStatus 1

# Soup
  # Toggle
  execute if score soups ItemsBunker >= totalPresent GameStatus if score soupGiven MenuFeed < totalPresent GameStatus run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:37,display:{Name:'{"text":"Keep all soup","color":"gray","bold":true}',Lore:['{"text":"Click to add all","color":"dark_gray","underlined":true}']}}}
  execute if score soups ItemsBunker >= totalPresent GameStatus if score soupGiven MenuFeed >= totalPresent GameStatus run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:38,display:{Name:'{"text":"Give all soup","color":"gray","bold":true}',Lore:['{"text":"Click to remove all","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score soups ItemsBunker < totalPresent GameStatus run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more soup","color":"dark_red"}']}}}
# Water
  # Toggle
  execute if score waters ItemsBunker >= totalPresent GameStatus if score waterGiven MenuFeed < tempTotalPresent GameStatus run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:79,isMenu:1b,page:1,selection:39,display:{Name:'{"text":"Keep all water","color":"gray","bold":true}',Lore:['{"text":"Click to add all","color":"dark_gray","underlined":true}']}}}
  execute if score waters ItemsBunker >= totalPresent GameStatus if score waterGiven MenuFeed >= tempTotalPresent GameStatus run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19,isMenu:1b,page:1,selection:40,display:{Name:'{"text":"Give all water","color":"gray","bold":true}',Lore:['{"text":"Click to remove all","color":"dark_gray","underlined":true}']}}}
  # Lock
  execute if score waters ItemsBunker < tempTotalPresent GameStatus run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:105,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more water","color":"dark_red"}']}}}

# Reset Scores
scoreboard players reset tempTotalPresent GameStatus