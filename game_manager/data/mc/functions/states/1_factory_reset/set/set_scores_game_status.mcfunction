# GAMESTATUS
scoreboard objectives add GameStatus dummy {"bold":true,"color":"white","text":"Game Status"}
# 
scoreboard players set started GameStatus 0
scoreboard players set state GameStatus 1
# Player
scoreboard players set music GameStatus 0
scoreboard players set fakeBlindness GameStatus 0
scoreboard players set lockedSlots GameStatus 0
scoreboard players set lockedSlotsMax GameStatus 0
scoreboard players set lockInventory GameStatus 0
# Scavenge Nuke
scoreboard players set nukeSurvived GameStatus 0
# Character
scoreboard players set characterRevived GameStatus 0
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
scoreboard players set preBunkerLook GameStatus 0
scoreboard players set bunkerLook GameStatus 0