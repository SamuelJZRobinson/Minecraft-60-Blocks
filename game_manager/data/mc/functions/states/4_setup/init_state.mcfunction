tellraw @a "state 4"

# Give Outfits
execute if score doTed Settings matches 0 as @p[team=Player] run function mc:utility/outfit/give_outfit_dolores
execute if score doTed Settings matches 1 as @p[team=Player] run function mc:utility/outfit/give_outfit_ted

# Teleport To House
function mc:utility/tp/tp_house

# Setup Gamemodes
execute if score gamemode Settings matches 1 run function mc:states/4_setup/setup_gamemode_atomic_drill
execute if score gamemode Settings matches 2 run function mc:states/4_setup/setup_gamemode_apocalypse
execute if score gamemode Settings matches 3 run function mc:states/4_setup/setup_gamemode_scavenge
execute if score gamemode Settings matches 4 run function mc:states/4_setup/setup_gamemode_survival