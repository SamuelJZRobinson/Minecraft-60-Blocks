# Load Scripts Upon Start
execute if score started Lobby matches 1 run function mc:slow_loop_started

# Music
execute unless score preClock Timer = clock Timer run function mc:play/lobby/manage_music
execute as @a[scores={PlayerLeave=1..}] at @s run function mc:play/lobby/manage_music_return

# Loop Function
schedule function mc:slow_loop 10t replace