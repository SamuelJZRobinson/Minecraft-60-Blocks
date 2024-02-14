# Start
execute if score started GameStatus matches 1 run function mc:loops/active/active_loop_8t

# Music
execute unless score preClock Timer = clock Timer run function mc:utility/music/manage_music
execute as @a[scores={PlayerLeave=1..}] at @s run function mc:utility/music/manage_music_return

# Loop Function
schedule function mc:loops/idle/idle_loop_8t 8t replace