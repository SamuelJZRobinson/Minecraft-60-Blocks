# State Init
execute if score state GameStatus matches 6 run function mc:states/6_explore/timer/timer_init
execute if score state GameStatus matches 7 run function mc:states/7_scavenge/timer/timer_init
execute if score state GameStatus matches 9 run function mc:states/9_expedition/timer/timer_init

# Start Loop
function mc:utility/timer/timer_loop