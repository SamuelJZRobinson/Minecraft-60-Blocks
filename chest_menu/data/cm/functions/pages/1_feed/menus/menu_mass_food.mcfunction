# Adjust totalPresent For Mutant Mary
scoreboard players operation temptotalPresent CharactersCount = totalPresent CharactersCount
execute if score isMutant MaryStatus matches 1 run scoreboard players remove temptotalPresent CharactersCount 1

# Soup
  # Toggle
  execute if score soups ItemsBunker >= totalPresent CharactersCount if score soupGiven MenuFeed < totalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Mass Soup"}',"minecraft:lore":['{"color":"dark_gray","text":"Add all soup"}'],"minecraft:custom_model_data":76,"minecraft:custom_data":{isMenu:1b,page:1,selection:37}}}
  execute if score soups ItemsBunker >= totalPresent CharactersCount if score soupGiven MenuFeed >= totalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gold","bold":true,"text":"Mass Soup"}',"minecraft:lore":['{"color":"gold","text":"Selected"}','{"color":"dark_gray","text":"Add all soup"}'],"minecraft:custom_model_data":16,"minecraft:custom_data":{isMenu:1b,page:1,selection:38}}}
  # Lock
  execute if score soups ItemsBunker < totalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:21b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need more soup"}'],"minecraft:custom_model_data":102,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}
# Water
  # Toggle
  execute if score waters ItemsBunker >= temptotalPresent CharactersCount if score waterGiven MenuFeed < temptotalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gray","bold":true,"text":"Mass Water"}',"minecraft:lore":['{"color":"dark_gray","text":"Remove all water"}'],"minecraft:custom_model_data":79,"minecraft:custom_data":{isMenu:1b,page:1,selection:39}}}
  execute if score waters ItemsBunker >= temptotalPresent CharactersCount if score waterGiven MenuFeed >= temptotalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"gold","bold":true,"text":"Mass water"}',"minecraft:lore":['{"color":"gold","text":"Selected"}','{"color":"dark_gray","text":"Remove all water"}'],"minecraft:custom_model_data":19,"minecraft:custom_data":{isMenu:1b,page:1,selection:40}}}
  # Lock
  execute if score waters ItemsBunker < temptotalPresent CharactersCount run data modify block ~ ~ ~ Items insert 0 value {Slot:23b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need more water"}'],"minecraft:custom_model_data":105,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}

# Reset Scores
scoreboard players reset temptotalPresent CharactersCount