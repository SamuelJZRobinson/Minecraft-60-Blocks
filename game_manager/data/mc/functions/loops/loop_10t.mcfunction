# Start
execute if score started GameStatus matches 1 run function mc:loops/active_loop_10t

# Music
execute unless score preMusic GameStatus = music GameStatus run function mc:utility/music/music_loop

# Player
  # Gamemode
  execute if score started GameStatus matches 0 run gamemode adventure @a[team=Lobby,gamemode=!adventure]
  execute if score started GameStatus matches 1 run gamemode spectator @a[team=Lobby,gamemode=!spectator]
  # Team Validation
    # Lobby
    team join Lobby @a[team=!Lobby,team=!Player]
    # Player
    execute store result score playerAliveCount PlayerCount run team list Player
    execute if score playerAliveCount PlayerCount matches 2.. run team join Lobby @r[team=Player]
  # Rejoins
  execute as @a[scores={PlayerLeaves=1..}] run function mc:loops/player_rejoins

# Loop
schedule function mc:loops/loop_10t 10t replace