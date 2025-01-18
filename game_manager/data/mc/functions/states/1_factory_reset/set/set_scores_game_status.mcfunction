# Objective
scoreboard objectives add GameStatus dummy {"bold":true,"color":"white","text":"Game Status"}
# States
scoreboard players set isGameStarted GameStatus 0
scoreboard players set gameState GameStatus 1
# Items
scoreboard players set characterItemBreak GameStatus 0
# Player
scoreboard players set music GameStatus 0
# Character
scoreboard players set adultsAlive GameStatus 0
scoreboard players set childrenAlive GameStatus 0
scoreboard players set totalAlive GameStatus 0
scoreboard players set totalPresent GameStatus 0
# Day
scoreboard players set day GameStatus 0
# Ending
scoreboard players set ending GameStatus 0
# Evil
scoreboard players set isEvil GameStatus 0
# Raycast
scoreboard players set bunkerLook GameStatus 0