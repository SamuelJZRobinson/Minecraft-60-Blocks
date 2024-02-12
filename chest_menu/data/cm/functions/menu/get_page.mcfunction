# Remember If Player Has Item In Inventory
scoreboard players set bool ChestMenuMain 0

# Identify Page
  # Page 0
  execute store success score bool ChestMenuMain run clear @s #cm:chest_menu{page:0} 0
  execute if score bool ChestMenuMain matches 1 run scoreboard players set @s ChestMenuMain 0
  # Page 1
  execute store success score bool ChestMenuMain run clear @s #cm:chest_menu{page:1} 0
  execute if score bool ChestMenuMain matches 1 run scoreboard players set @s ChestMenuMain 1
  # Page 2
  execute store success score bool ChestMenuMain run clear @s #cm:chest_menu{page:2} 0
  execute if score bool ChestMenuMain matches 1 run scoreboard players set @s ChestMenuMain 2
  # Page 3
  execute store success score bool ChestMenuMain run clear @s #cm:chest_menu{page:3} 0
  execute if score bool ChestMenuMain matches 1 run scoreboard players set @s ChestMenuMain 3