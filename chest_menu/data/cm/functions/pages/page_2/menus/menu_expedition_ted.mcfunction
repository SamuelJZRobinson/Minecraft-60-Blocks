# Toggle
execute if score isTired TedStatus matches 0 if score characterSelect MenuExplore matches 4 run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:27,isMenu:1b,page:2,selection:9,display:{Name:'{"text":"Send Ted","color":"gray","bold":true}',Lore:['{"text":"Click to ignore","color":"dark_gray","underlined":true}']}}}
execute if score isTired TedStatus matches 0 if score characterSelect MenuExplore matches 0.. run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:81,isMenu:1b,page:2,selection:8,display:{Name:'{"text":"Ignore Ted","color":"gray","bold":true}',Lore:['{"text":"Click to send","color":"dark_gray","underlined":true}']}}}
# Lock
execute if score isTired TedStatus matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:2b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:107,isMenu:1b,page:2,selection:0,display:{Name:'{"text":"Locked","color":"red","bold":true}',Lore:['{"text":"Ted needs rest","color":"dark_red"}']}}}