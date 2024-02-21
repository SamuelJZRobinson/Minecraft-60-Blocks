# Remember Valid Removed Items
execute store result score items MenuMain run clear @s #cm:chest_menu{isMenu:1b} 0

# Interpet Data If Item Exists
execute if score items MenuMain matches 1.. run function cm:root/get/get_action