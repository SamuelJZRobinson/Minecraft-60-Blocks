# Set Scores
execute if score selection MenuMain matches 4 run scoreboard players set choice MenuEvent 0
execute if score selection MenuMain matches 5 run scoreboard players set choice MenuEvent 1

# GUI
  # Cross (No)
  execute if score choice MenuEvent matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:59,isMenu:1b,page:3,selection:4,display:{Name:'{"text":"No","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  execute unless score choice MenuEvent matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:60,isMenu:1b,page:3,selection:4,display:{Name:'{"text":"No","color":"gray","bold":true}'}}}
  # Tick (Yes)
  execute if score choice MenuEvent matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:57,isMenu:1b,page:3,selection:5,display:{Name:'{"text":"Yes","color":"gold","bold":true}',Lore:['{"text":"Selected","color":"gold"}']}}}
  execute unless score choice MenuEvent matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",Count:1b,tag:{CustomModelData:58,isMenu:1b,page:3,selection:5,display:{Name:'{"text":"Yes","color":"gray","bold":true}'}}}