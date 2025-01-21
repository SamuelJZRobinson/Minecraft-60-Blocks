# Clear Stuff
clear @s
effect clear @s

# Set Team
team join Lobby @s[team=!Player]

# Set Gamemode
execute if score isGameStarted GameStatus matches 0 run gamemode adventure @s
execute if score isGameStarted GameStatus matches 1 run gamemode spectator @s[team=!Player]

# Teleport
  # Lobby
  execute if score isGameStarted GameStatus matches 0 run function gc:utility/tp/tp_lobby
  execute if score isGameStarted GameStatus matches 0 run title @s actionbar {"text":"Teleported to the lobby","bold":true,"color":"red"}
  # Player
  execute if score isGameStarted GameStatus matches 1 run teleport @s[team=Lobby] @p[team=Player]
  execute if score isGameStarted GameStatus matches 1 run title @s[team=Lobby] actionbar {"text":"Teleported to the player","bold":true,"color":"red"}

# Music
function gc:utility/music/music_loop_player

# Reset Scores
scoreboard players reset @s[scores={PlayerLeaves=1..}] PlayerLeaves