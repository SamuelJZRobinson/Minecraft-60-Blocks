# Sounds
function mc:sounds/harmonica_fail

# Particles
function rc:utility/particles/expedition/mob_hit

# Speed Mobs
execute as @e[team=Mobs,distance=..32] run effect give @s speed 10 0 false
execute as @e[team=Mobs,distance=..32] at @s run function rc:utility/particles/expedition/mob_hit