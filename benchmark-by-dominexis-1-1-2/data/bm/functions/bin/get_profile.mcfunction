# Error state

execute if score #active bm.value matches 1 run tellraw @s ["",{"text":"[","color":"red"},{"text":"Benchmark","color":"gray"},{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Profile already being gathered","color":"red"}]







# Run function if not already active

execute if score #active bm.value matches 0 run function bm:bin/start_profile