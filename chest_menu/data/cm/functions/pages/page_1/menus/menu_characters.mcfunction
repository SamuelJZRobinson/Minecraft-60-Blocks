# Ted
execute if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 1 run function cm:pages/page_1/menus/menu_characters_ted
execute if score alive TedStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:9b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:107,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Ted","color":"dark_red"}']}}}
# Dolores
execute if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 2 run function cm:pages/page_1/menus/menu_characters_dolores
execute if score alive DoloresStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:93,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Dolores","color":"dark_red"}']}}}
# Mary
execute if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 run function cm:pages/page_1/menus/menu_characters_mary
execute if score alive MaryStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:5b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:98,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Mary","color":"dark_red"}']}}}
# Timmy
execute if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 4 run function cm:pages/page_1/menus/menu_characters_timmy
execute if score alive TimmyStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:104,isMenu:1b,page:1,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Timmy","color":"dark_red"}']}}}