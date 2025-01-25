# Ted
execute if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 1 run function cm:pages/1_feed/menus/menu_characters_ted
execute if score alive TedStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Ted"}'],"minecraft:custom_model_data":107,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}

# Dolores
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 2 run function cm:pages/1_feed/menus/menu_characters_dolores
execute if score alive DoloresStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Dolores"}'],"minecraft:custom_model_data":93,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}

# Mary
execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 run function cm:pages/1_feed/menus/menu_characters_mary
execute if score alive MaryStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:9b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Mary"}'],"minecraft:custom_model_data":98,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}

# Timmy
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 4 run function cm:pages/1_feed/menus/menu_characters_timmy
execute if score alive TimmyStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"color":"red","bold":true,"text":"Locked"}',"minecraft:lore":['{"color":"dark_red","text":"Need Timmy"}'],"minecraft:custom_model_data":104,"minecraft:custom_data":{isMenu:1b,page:1,selection:0}}}