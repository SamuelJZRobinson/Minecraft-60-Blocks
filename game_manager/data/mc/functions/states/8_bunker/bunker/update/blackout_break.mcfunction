# Deactivate Lights
setblock -11 -43 -11 minecraft:air
setblock -5 -43 -11 minecraft:air
function mc:sounds/light_flicker

# Fix
schedule function mc:states/8_bunker/bunker/update/blackout_fix 10t replace