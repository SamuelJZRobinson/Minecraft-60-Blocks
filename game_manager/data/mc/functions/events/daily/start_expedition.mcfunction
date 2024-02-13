# Set Scores
scoreboard players set stage ItemsExpedition 1
execute if score expeditionMode Lobby matches 1 run scoreboard players set blindness GameStatus 2
execute if score expeditionMode Lobby matches 1 run scoreboard players reset @p[team=Playing] PlayerDeaths
execute if score expeditionMode Lobby matches 1 run scoreboard players set clock Timer 4
execute if score expeditionMode Lobby matches 1 run scoreboard players set music GameStatus 2

# Manage Items
function mc:events/random_loadout/locations/items/manage_items