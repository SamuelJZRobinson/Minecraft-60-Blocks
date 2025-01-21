# Set Score
scoreboard players set testsFailed Exception 1

# Alert
tellraw @a ["",{"text":"⚠ ","color":"gold"},{"nbt":"message","storage":"exceptions","color":"gold"}]
function gc:sounds/warning