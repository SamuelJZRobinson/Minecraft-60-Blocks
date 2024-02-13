# Notes
  # preClock triggers the next song to play when the clock changes
  # preMusic cycles through songs during a specific part of the game

# Prevent Music Overlap
stopsound @a record

# Lobby
execute if score music GameStatus matches 0 run playsound minecraft:music_disc.wait record @a 21.5 131.0 -25.5 64 1 1
execute if score music GameStatus matches 0 run schedule function mc:play/lobby/manage_music 234s replace

# Scavenge
execute if score music GameStatus matches 1 run playsound minecraft:music_disc.pigstep record @a 24.5 65.0 -6.5 64 1 1

# Wasteland
execute if score music GameStatus matches 2 run playsound minecraft:ambient.basalt_deltas.loop record @a ~ ~ ~ 64 2 1
execute if score music GameStatus matches 2 run schedule function mc:play/lobby/manage_music 21s replace

# Bunker
execute if score music GameStatus matches 3..5 if score preMusic GameStatus = music GameStatus run scoreboard players add music GameStatus 1
execute if score music GameStatus matches 6.. run scoreboard players set music GameStatus 3

execute if score music GameStatus matches 3 run playsound minecraft:music_disc.mellohi record @a 0.5 54.5 30.0 1 1 1
execute if score music GameStatus matches 3 run schedule function mc:play/lobby/manage_music 96s replace

execute if score music GameStatus matches 4 run playsound minecraft:music_disc.chirp record @a 0.5 54.5 30.0 1 1 1
execute if score music GameStatus matches 4 run schedule function mc:play/lobby/manage_music 185s replace

execute if score music GameStatus matches 5 run playsound minecraft:music_disc.otherside record @a 0.5 54.5 30.0 1 1 1
execute if score music GameStatus matches 5 run schedule function mc:play/lobby/manage_music 195s replace

# Refresh Scores
scoreboard players operation preClock Timer = clock Timer
scoreboard players operation preMusic GameStatus = music GameStatus
scoreboard players reset @a[scores={PlayerLeave=1..}] PlayerLeave