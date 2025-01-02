# Randomize House
function mc:states/4_setup/place/manage_placement

# Goto House
function mc:utility/tp/tp_house

# Proceed
scoreboard players set state GameStatus 6
schedule function mc:states/manage_states 1t replace