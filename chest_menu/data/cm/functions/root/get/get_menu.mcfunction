# Remember If Player Has Item In Inventory
scoreboard players set bool MenuMain 0

# Identify Page
  # Page 0
  execute store success score bool MenuMain run clear @s #cm:chest_menu[custom_data~{page:0}] 0
  execute if score bool MenuMain matches 1 run scoreboard players set @s MenuMain 0
  # Page 1
  execute store success score bool MenuMain run clear @s #cm:chest_menu[custom_data~{page:1}] 0
  execute if score bool MenuMain matches 1 run scoreboard players set @s MenuMain 1
  # Page 2
  execute store success score bool MenuMain run clear @s #cm:chest_menu[custom_data~{page:2}] 0
  execute if score bool MenuMain matches 1 run scoreboard players set @s MenuMain 2
  # Page 3
  execute store success score bool MenuMain run clear @s #cm:chest_menu[custom_data~{page:3}] 0
  execute if score bool MenuMain matches 1 run scoreboard players set @s MenuMain 3