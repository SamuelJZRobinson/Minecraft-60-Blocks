# Set Scores
scoreboard players set lockInventory GameStatus 1
# scoreboard players set blindness GameStatus 2

# Randomize House
function mc:states/stages/4_setup/place/manage_placement

# Player
effect give @p[team=Playing] minecraft:speed infinite 1 true
function mc:utility/outfit/manage_house_outfit
function mc:utility/tp/tp_house

# Set Timer
execute if score difficulty Lobby matches 1 run scoreboard players set seconds Timer 21
execute if score difficulty Lobby matches 2 run scoreboard players set seconds Timer 11
execute if score difficulty Lobby matches 3 run scoreboard players set seconds Timer 2
function mc:utility/timer/engine/timer_init

# Set State
### State should only change after timer
# scoreboard players set state GameStatus 6
# function mc:states/stages/manage_states