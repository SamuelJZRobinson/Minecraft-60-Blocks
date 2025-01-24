# 1 Adult Alive And Children Alive
execute if score adultsAlive CharactersCount matches 1 if score childrenAlive CharactersCount matches 1.. if score alive TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Last adult must watch the bunker"}'],"minecraft:custom_model_data":107,"minecraft:custom_data":{isMenu:1b,page:2,selection:0}}}
execute if score adultsAlive CharactersCount matches 1 if score childrenAlive CharactersCount matches 1.. if score alive DoloresStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Last adult must watch the bunker"}'],"minecraft:custom_model_data":93,"minecraft:custom_data":{isMenu:1b,page:2,selection:0}}}

# Ted
execute if score alive TedStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_ted
execute if score alive TedStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Ted"}'],"minecraft:custom_model_data":107,"minecraft:custom_data":{isMenu:1b,page:2,selection:0}}}
# Dolores
execute if score alive DoloresStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_dolores
execute if score alive DoloresStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Dolores"}'],"minecraft:custom_model_data":93,"minecraft:custom_data":{isMenu:1b,page:2,selection:0}}}
# Mary
execute if score alive MaryStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_mary
execute if score alive MaryStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Mary"}'],"minecraft:custom_model_data":98,"minecraft:custom_data":{isMenu:1b,page:2,selection:0}}}
# Timmy
execute if score alive TimmyStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_timmy
execute if score alive TimmyStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Timmy"}'],"minecraft:custom_model_data":104,"minecraft:custom_data":{isMenu:1b,page:2,selection:0}}}