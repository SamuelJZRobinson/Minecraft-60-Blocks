execute if score clock Timer matches 1..2 at @e[type=minecraft:armor_stand,tag=smallSquare,limit=1] run function mc:status/particles/small_square_particles
execute at @e[type=minecraft:armor_stand,tag=largeSquare,limit=1] run function mc:status/particles/large_square_particles
execute at @e[type=minecraft:armor_stand,tag=cross,limit=1] run function mc:status/particles/cross_particles