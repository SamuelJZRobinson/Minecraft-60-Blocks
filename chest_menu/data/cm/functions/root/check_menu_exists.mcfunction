# Remember Valid Removed Items
execute store result score items ChestMenuMain run clear @s #cm:chest_menu{isMenu:1b} 0

# Interpet Data If Item Exists
execute if score items ChestMenuMain matches 1.. run function cm:root/get_action