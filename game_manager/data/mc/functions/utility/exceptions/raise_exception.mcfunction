# Alert
tellraw @a ["",{"text":"☠ ","color":"red"},{"nbt":"message","storage":"messages","color":"red"}]
function mc:sounds/error

# Set Scores
scoreboard players set testsFailed Exception 1
scoreboard players set doException Exception 1
scoreboard players set started GameStatus 0
schedule function mc:utility/exceptions/reset_exception 5t replace