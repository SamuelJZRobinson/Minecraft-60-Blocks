# Start
execute if score started GameStatus matches 1 run function mc:loops/active/active_loop_8t

# Team Validation
function mc:utility/team/team_validation

# Music
execute unless score preMusic GameStatus = music GameStatus run function mc:utility/music/music_loop
execute as @a[scores={PlayerLeave=1..}] run function mc:utility/music/music_loop_player

# Loop
schedule function mc:loops/idle/idle_loop_8t 8t replace