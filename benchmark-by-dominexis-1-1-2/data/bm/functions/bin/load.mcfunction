# Create scoreboard objectives

scoreboard objectives add bm.value dummy







# Set activity boolean

scoreboard players set #active bm.value 0







# Set gamerules

gamerule maxCommandChainLength 2147483647
gamerule sendCommandFeedback false







# Tellraw status

tellraw @a ["",{"text":"[","color":"red"},{"text":"Benchmark","color":"gray"},{"text":"]","color":"red"}," ",{"text":"Data pack loaded. Version ","color":"gray"},{"text":"1.1.2","color":"white"}]