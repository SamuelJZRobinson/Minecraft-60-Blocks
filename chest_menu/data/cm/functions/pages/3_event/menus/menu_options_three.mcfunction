# Set Scores
execute if score selection MenuMain matches 4 run scoreboard players set choice MenuEvent 1
execute if score selection MenuMain matches 5 run scoreboard players set choice MenuEvent 2
execute if score selection MenuMain matches 6 run scoreboard players set choice MenuEvent 3

# GUI
  # 1
  execute if score choice MenuEvent matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:57,isMenu:1b,page:3,selection:7,display:{Name:'{"text":"1","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  execute unless score choice MenuEvent matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:60,isMenu:1b,page:3,selection:4,display:{Name:'{"text":"1","color":"gray","bold":true}'}}}
  # 2
  execute if score choice MenuEvent matches 2 run data modify block ~ ~ ~ Items insert 0 value {Slot:13b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:57,isMenu:1b,page:3,selection:7,display:{Name:'{"text":"2","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  execute unless score choice MenuEvent matches 2 run data modify block ~ ~ ~ Items insert 0 value {Slot:13b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:60,isMenu:1b,page:3,selection:5,display:{Name:'{"text":"2","color":"gray","bold":true}'}}}
  # 3
  execute if score choice MenuEvent matches 3 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:57,isMenu:1b,page:3,selection:7,display:{Name:'{"text":"3","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  execute unless score choice MenuEvent matches 3 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:60,isMenu:1b,page:3,selection:6,display:{Name:'{"text":"3","color":"gray","bold":true}'}}}