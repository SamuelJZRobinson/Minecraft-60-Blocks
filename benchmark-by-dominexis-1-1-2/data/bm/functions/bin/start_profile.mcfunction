# Set iteration count

scoreboard players set #iterations bm.value 0







# Set tick count

scoreboard players set #tick bm.value 0







# Set activity boolean

scoreboard players set #active bm.value 1







# Tellraw status

tellraw @a ["",{"text":"[","color":"red"},{"text":"Benchmark","color":"gray"},{"text":"]","color":"red"}," ",{"text":"Gathering profile:","color":"dark_green"}," ",{"text":"Please wait 5 seconds","color":"gray"}]