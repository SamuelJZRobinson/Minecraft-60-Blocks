# Show Time Remaining
execute if score seconds Timer matches 1.. run title @s title {"score":{"name":"seconds","objective":"Timer"},"color":"red","bold":true}
execute if score seconds Timer matches 1.. run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 1 0 1

# Time Depleted
execute if score seconds Timer matches 0 if score clock Timer matches 2 run playsound minecraft:block.end_portal.spawn block @s ~ ~ ~ 128 0 1
execute if score seconds Timer matches 0 if score clock Timer matches 4 run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 128 0 1