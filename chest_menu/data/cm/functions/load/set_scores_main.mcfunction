# Objective
scoreboard objectives add OpenMenu minecraft.custom:minecraft.open_chest {"bold":true,"color":"white","text":"Open Menu"}
# Opened
scoreboard players reset * OpenMenu

# Objective
scoreboard objectives add MenuMain dummy {"bold":true,"color":"white","text":"Menu Main"}
# Page
scoreboard players reset * MenuMain
# Selection
scoreboard players set bool MenuMain 0
scoreboard players set items MenuMain 0
scoreboard players set selection MenuMain 0