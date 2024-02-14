# Title
execute if score loadingStatus GameStatus matches 1 run title @s actionbar {"text":"Loading","bold":true,"color":"red"}
execute if score loadingStatus GameStatus matches 2 run title @s actionbar {"text":"Loading.","bold":true,"color":"red"}
execute if score loadingStatus GameStatus matches 3 run title @s actionbar {"text":"Loading..","bold":true,"color":"red"}
execute if score loadingStatus GameStatus matches 4 run title @s actionbar {"text":"Loading...","bold":true,"color":"red"}
# Adjust Scores
scoreboard players add loadingStatus GameStatus 1
execute if score loadingStatus GameStatus matches 5.. run scoreboard players set loadingStatus GameStatus 1