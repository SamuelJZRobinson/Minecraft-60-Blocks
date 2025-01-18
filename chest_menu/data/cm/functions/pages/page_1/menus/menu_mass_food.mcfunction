# Adjust totalPresent For Mutant Mary
scoreboard players operation temptotalPresent CharactersCount = totalPresent CharactersCount
execute if score isMutant MaryStatus matches 1 run scoreboard players remove temptotalPresent CharactersCount 1

# Soup
  # Toggle
  execute if score soups ItemsBunker >= totalPresent CharactersCount if score soupGiven MenuFeed < totalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:76,isMenu:1b,page:1,selection:37,display:{Name:'{"text":"Mass soup","color":"gray","bold":true}',Lore:['{"text":"Add all soup","color":"dark_gray"}']}}}
  execute if score soups ItemsBunker >= totalPresent CharactersCount if score soupGiven MenuFeed >= totalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16,isMenu:1b,page:1,selection:38,display:{Name:'{"text":"Mass soup","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}','{"text":"Remove all soup","color":"dark_gray"}']}}}
  # Lock
  execute if score soups ItemsBunker < totalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:102,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more soup","color":"dark_red"}']}}}
# Water
  # Toggle
  execute if score waters ItemsBunker >= temptotalPresent CharactersCount if score waterGiven MenuFeed < temptotalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:79,isMenu:1b,page:1,selection:39,display:{Name:'{"text":"Mass water","color":"gray","bold":true}',Lore:['{"text":"Add all water","color":"dark_gray"}']}}}
  execute if score waters ItemsBunker >= temptotalPresent CharactersCount if score waterGiven MenuFeed >= temptotalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19,isMenu:1b,page:1,selection:40,display:{Name:'{"text":"Mass water","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}','{"text":"Remove all water","color":"dark_gray"}']}}}
  # Lock
  execute if score waters ItemsBunker < temptotalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:105,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need more water","color":"dark_red"}']}}}

# Reset Scores
scoreboard players reset temptotalPresent CharactersCount