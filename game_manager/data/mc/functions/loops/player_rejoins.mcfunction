# Clear Stuff
clear @s
effect clear @s

# Set Team
team join Lobby @s

# Set Gamemode
execute if score started GameStatus matches 0 run gamemode adventure @s
execute if score started GameStatus matches 1 run gamemode spectator @s

# Teleport
  # Lobby
  execute if score started GameStatus matches 0 run function mc:utility/tp/tp_lobby
  execute if score started GameStatus matches 0 run title @s actionbar {"text":"Teleported to the lobby","bold":true,"color":"red"}
  # Player
  execute if score started GameStatus matches 1 run teleport @a[team=Lobby] @p[team=Player]
  execute if score started GameStatus matches 1 run title @s actionbar {"text":"Teleported to the player","bold":true,"color":"red"}

# Music
function mc:utility/music/music_loop_player

# Reset Scores
scoreboard players reset @s[scores={PlayerLeaves=1..}] PlayerLeaves