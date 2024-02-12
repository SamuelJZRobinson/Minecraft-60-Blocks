# Remove scoreboard objectives

scoreboard objectives remove bm.value







# Set gamerules

gamerule maxCommandChainLength 65536
# gamerule sendCommandFeedback true







# Prompt to remove data pack

tellraw @s ["",{"text":"[","color":"red"},{"text":"Benchmark","color":"gray"},{"text":"]","color":"red"}," ",{"text":"Benchmark successfully uninstalled.","color":"gray"}]