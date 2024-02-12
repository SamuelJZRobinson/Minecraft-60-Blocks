# Stop cycle

scoreboard players set #active bm.value 0







# Send data to chat

tellraw @a ["",{"text":"[","color":"red"},{"text":"Benchmark","color":"gray"},{"text":"]","color":"red"}," ",{"text":"Profile gathered:","color":"dark_green"}," ",{"text":"Function executed ","color":"gray"},{"score":{"name":"#iterations","objective":"bm.value"},"color":"white"},{"text":" times","color":"gray"}]