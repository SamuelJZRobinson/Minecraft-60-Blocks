# Show Time Remaining
execute if score seconds Timer matches 1.. run title @s title {"score":{"name":"seconds","objective":"Timer"},"color":"red","bold":true}
execute if score seconds Timer matches 1.. run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 0 1