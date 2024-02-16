# Prevent Music Overlap
stopsound @s record

# Lobby
execute if score music GameStatus matches 0 run playsound minecraft:music_disc.wait record @s 21.5 131.0 -25.5 64 1 1

# Scavenge
execute if score music GameStatus matches 1 run playsound minecraft:music_disc.pigstep record @s 24.5 65.0 -6.5 64 1 1

# Wasteland
execute if score music GameStatus matches 2 run playsound minecraft:ambient.basalt_deltas.loop record @s ~ ~ ~ 64 2 1

# Bunker
execute if score music GameStatus matches 3 run playsound minecraft:music_disc.mellohi record @s 0.5 54.5 30.0 1 1 1
execute if score music GameStatus matches 4 run playsound minecraft:music_disc.chirp record @s 0.5 54.5 30.0 1 1 1
execute if score music GameStatus matches 5 run playsound minecraft:music_disc.otherside record @s 0.5 54.5 30.0 1 1 1

# Refresh Scores
scoreboard players reset @s[scores={PlayerLeave=1..}] PlayerLeave