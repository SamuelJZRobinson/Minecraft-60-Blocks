# Start
execute if score started GameStatus matches 1 run function mc:loops/active/active_loop_8t

# Music
execute unless score preMusic GameStatus = music GameStatus run function mc:utility/music/manage_music
execute as @a[scores={PlayerLeave=1..}] at @s run function mc:utility/music/manage_music_return

# Defautlt Gamemode
execute if score started GameStatus matches 0 run gamemode adventure @a[gamemode=!adventure,team=Lobby]

# Loop
schedule function mc:loops/idle/idle_loop_8t 8t replace