# Rotate Accordingly
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=north] run teleport @s ~ ~ ~ 180 0
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=northWest] run teleport @s ~ ~ ~ -145 0
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=east] run teleport @s ~ ~ ~ -90 0
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=southEast] run teleport @s ~ ~ ~ -45 0
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=south] run teleport @s ~ ~ ~ 0 0
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=southWest] run teleport @s ~ ~ ~ 45 0
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=west] run teleport @s ~ ~ ~ 90 0
execute at @s if entity @e[type=minecraft:marker,sort=nearest,distance=..1,tag=northWest] run teleport @s ~ ~ ~ 145 0

# Axe Item Adjustment
execute at @s[tag=scavengeAxe,tag=!wall] if entity @e[type=minecraft:marker,sort=nearest,distance=..1] run teleport @s ~ ~0.375 ~

# Remove Marker
execute at @s run kill @e[type=minecraft:marker,limit=1,sort=nearest,distance=..1]