# Display
execute if score doException Exception matches 0 run tellraw @a ["",{"text":"☠ ","color":"red"},{"nbt":"message","storage":"messages","color":"red"}]
function mc:sounds/error

# Stop Game
scoreboard players set doException Exception 1
scoreboard players set started GameStatus 0
schedule function mc:error_handling/reset_exception 5t replace