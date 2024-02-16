# Gameplay
scoreboard objectives add GameStatus dummy {"bold":true,"color":"white","text":"GameStatus"}
scoreboard players set adultsAlive GameStatus 0
scoreboard players set childrenAlive GameStatus 0
scoreboard players set totalAlive GameStatus 0
scoreboard players set totalPresent GameStatus 0
scoreboard players set fakeBlindness GameStatus 0
scoreboard players set preBunkerLook GameStatus 0
scoreboard players set bunkerLook GameStatus 0
scoreboard players set characterRevived GameStatus 0
scoreboard players set day GameStatus 0
scoreboard players set ending GameStatus 0
scoreboard players set lockedSlots GameStatus 0
scoreboard players set lockedSlotsMax GameStatus 0
scoreboard players set music GameStatus 0
scoreboard players set lockInventory GameStatus 0
### Change to nukeSurvived to remove ambiguity
scoreboard players set survived GameStatus 0
# Statistics
scoreboard players set expeditionLoot GameStatus 0
scoreboard players set isEvil GameStatus 0
scoreboard players set noDecisions GameStatus 0
scoreboard players set shelterDefences GameStatus 0
scoreboard players set soupConsumed GameStatus 0
scoreboard players set successfulExpeditions GameStatus 0
scoreboard players set waterConsumed GameStatus 0
scoreboard players set yesDecisions GameStatus 0