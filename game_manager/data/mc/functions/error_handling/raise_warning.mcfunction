# Set Score
scoreboard players set testsFailed Exception 1

# Alert
tellraw @a ["",{"text":"⚠ ","color":"gold"},{"nbt":"message","storage":"messages","color":"gold"}]
function mc:sounds/warning