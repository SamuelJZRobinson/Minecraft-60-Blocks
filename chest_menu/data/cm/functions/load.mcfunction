# Create Objectives
scoreboard objectives add ChestMenuEvent dummy {"bold":true,"color":"white","text":"Chest Menu Event"}
scoreboard objectives add ChestMenuExplore dummy {"bold":true,"color":"white","text":"Chest Menu Explore"}
scoreboard objectives add ChestMenuFeed dummy {"bold":true,"color":"white","text":"Chest Menu Feed"}
scoreboard objectives add ChestMenuMain dummy {"bold":true,"color":"white","text":"Chest Menu Main"}
scoreboard objectives add OpenChestMenu minecraft.custom:minecraft.open_chest {"bold":true,"color":"white","text":"Open Chest Menu"}

# Status
tellraw @a [{"text":"Chest menu loaded","color":"white","bold":false}]