# Modify Map
execute if score playerY ChestMenuExplore matches 306..312 run item replace entity @s weapon.mainhand with minecraft:filled_map{itemId:11,map:17}
execute if score playerY ChestMenuExplore matches 296..305 run item replace entity @s weapon.mainhand with minecraft:filled_map{itemId:11,map:18}
execute if score playerY ChestMenuExplore matches 290..295 run item replace entity @s weapon.mainhand with minecraft:filled_map{itemId:11,map:19}
execute if score playerY ChestMenuExplore matches 283..289 run item replace entity @s weapon.mainhand with minecraft:filled_map{itemId:11,map:20}

# Adjust Scores
scoreboard players operation prePlayerY ChestMenuExplore = playerY ChestMenuExplore