# Toggle
execute if score isTired TimmyStatus matches 0 if score characterSelect MenuExplore matches 5 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:18,isMenu:1b,page:2,selection:11,display:{Name:'{"text":"Send Timmy","color":"gray","bold":true}',Lore:['{"text":"Click to ignore","color":"dark_gray","underlined":true}']}}}
execute if score isTired TimmyStatus matches 0 if score characterSelect MenuExplore matches 0.. run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:78,isMenu:1b,page:2,selection:10,display:{Name:'{"text":"Ignore Timmy","color":"gray","bold":true}',Lore:['{"text":"Click to send","color":"dark_gray","underlined":true}']}}}
# Lock
execute if score isTired TimmyStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:3b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:104,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Timmy needs rest","color":"dark_red"}']}}}