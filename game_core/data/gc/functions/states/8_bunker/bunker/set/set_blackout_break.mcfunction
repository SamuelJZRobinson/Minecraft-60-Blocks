# Sound
function gc:sounds/light_flicker

# Remove Lights
setblock 1 -43 -10 structure_block{name:"minecraft:bunkers/lights_off",posX:0,posY:-1,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock 1 -44 -10 redstone_block

# Fix
schedule function gc:states/8_bunker/bunker/set/set_blackout_fix 10t replace