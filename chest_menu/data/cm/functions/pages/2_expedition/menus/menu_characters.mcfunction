# 1 Adult Alive And Children Alive
execute if score adultsAlive CharactersCount matches 1 if score childrenAlive CharactersCount matches 1.. if score alive TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:saddle",count:1,tag:{CustomModelData:107,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Last adult must watch the bunker","color":"dark_red"}']}}}
execute if score adultsAlive CharactersCount matches 1 if score childrenAlive CharactersCount matches 1.. if score alive DoloresStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:saddle",count:1,tag:{CustomModelData:93,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Last adult must watch the bunker","color":"dark_red"}']}}}

# Ted
execute if score alive TedStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_ted
execute if score alive TedStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:0b,id:"minecraft:saddle",count:1,tag:{CustomModelData:107,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Ted","color":"dark_red"}']}}}
# Dolores
execute if score alive DoloresStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_dolores
execute if score alive DoloresStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:1b,id:"minecraft:saddle",count:1,tag:{CustomModelData:93,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Dolores","color":"dark_red"}']}}}
# Mary
execute if score alive MaryStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_mary
execute if score alive MaryStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",count:1,tag:{CustomModelData:98,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Mary","color":"dark_red"}']}}}
# Timmy
execute if score alive TimmyStatus matches 1 run function cm:pages/2_expedition/menus/menu_characters_timmy
execute if score alive TimmyStatus matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",count:1,tag:{CustomModelData:104,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Need Timmy","color":"dark_red"}']}}}