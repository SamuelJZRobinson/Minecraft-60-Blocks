# Set Scores
scoreboard players set lockInventory GameStatus 1
scoreboard players set fakeBlindness GameStatus 1

# Randomize House
function mc:states/4_setup_house/place/manage_placement

# Goto House
function mc:utility/tp/tp_house

# Set State
scoreboard players set state GameStatus 6
schedule function mc:states/manage_states 1t replace