tellraw @a "state 4"

# Teleport To House
function mc:utility/tp/tp_house

# Setup Gamemodes
execute if score gamemode Settings matches 1 run function mc:states/4_setup/setup_gamemode_atomic_drill
execute if score gamemode Settings matches 2 run function mc:states/4_setup/setup_gamemode_apocalypse
execute if score gamemode Settings matches 3 run function mc:states/4_setup/setup_gamemode_scavenge
execute if score gamemode Settings matches 4 run function mc:states/4_setup/setup_gamemode_survival