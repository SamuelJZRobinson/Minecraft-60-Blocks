# Set Scores
execute if score selection MenuMain matches 4 run scoreboard players set choice MenuEvent 0
execute if score selection MenuMain matches 5 run scoreboard players set choice MenuEvent 1

# GUI
  # Cross (No)
  execute if score choice MenuEvent matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"text":"No","color":"gold","bold":true}',"minecraft:lore":['{"text":"Selected","color":"gold"}'],"minecraft:custom_model_data":59,"minecraft:custom_data":{isMenu:1b,page:3,selection:4}}}
  execute unless score choice MenuEvent matches 0 run data modify block ~ ~ ~ Items insert 0 value {Slot:12b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"text":"No","color":"gray","bold":true}',"minecraft:custom_model_data":60,"minecraft:custom_data":{isMenu:1b,page:3,selection:4}}}
  # Tick (Yes)
  execute if score choice MenuEvent matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"text":"Yes","color":"gold","bold":true}',"minecraft:lore":['{"text":"Selected","color":"gold"}'],"minecraft:custom_model_data":57,"minecraft:custom_data":{isMenu:1b,page:3,selection:5}}}
  execute unless score choice MenuEvent matches 1 run data modify block ~ ~ ~ Items insert 0 value {Slot:14b,id:"minecraft:saddle",count:1,components:{"minecraft:custom_name":'{"text":"Yes","color":"gray","bold":true}',"minecraft:custom_model_data":58,"minecraft:custom_data":{isMenu:1b,page:3,selection:5}}}