# Set Timer
execute if score difficulty Lobby matches 1 run scoreboard players set seconds Timer 21
execute if score difficulty Lobby matches 2 run scoreboard players set seconds Timer 11
execute if score difficulty Lobby matches 3 run scoreboard players set seconds Timer 2
function mc:utility/timer/engine/timer_init