# Sounds
function gc:sounds/harmonica_success

# Particles
function gc:utility/particles/expedition/harmonica_success

# Stun Mobs
execute as @e[team=Mobs,distance=..32] run effect give @s slowness 10 3 false
execute as @e[team=Mobs,distance=..32] at @s run function rc:utility/particles/expedition/mob_stun