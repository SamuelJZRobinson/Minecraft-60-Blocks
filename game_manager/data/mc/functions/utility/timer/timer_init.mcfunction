# State Init
execute if score state GameStatus matches 6 run function mc:states/5_grace_period/timer/timer_init
execute if score state GameStatus matches 7 run function mc:states/6_scavenge_house/timer/timer_init
execute if score state GameStatus matches 9 run function mc:states/8_expedition/timer/timer_init

# Start Loop
function mc:utility/timer/timer_loop