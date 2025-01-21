# Lobby
execute if score music GameStatus matches 0 run schedule function gc:utility/music/music_loop 234s replace

# Scavenge
  # Avoid Repeat

# Wasteland
execute if score music GameStatus matches 2 run schedule function gc:utility/music/music_loop 21s replace

# Bunker
  # Cycle
  execute if score music GameStatus matches 3..5 if score preMusic GameStatus = music GameStatus run scoreboard players add music GameStatus 1
  execute if score music GameStatus matches 6.. run scoreboard players set music GameStatus 3
  # Set
  execute if score music GameStatus matches 3 run schedule function gc:utility/music/music_loop 96s replace
  execute if score music GameStatus matches 4 run schedule function gc:utility/music/music_loop 185s replace
  execute if score music GameStatus matches 5 run schedule function gc:utility/music/music_loop 195s replace

# Play For Player
execute as @a run function gc:utility/music/music_loop_player

# Set Scores
scoreboard players operation preMusic GameStatus = music GameStatus