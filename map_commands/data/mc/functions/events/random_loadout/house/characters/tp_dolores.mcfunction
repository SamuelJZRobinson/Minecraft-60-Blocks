teleport @s @e[type=minecraft:marker,tag=ground,sort=random,limit=1]
execute at @s run kill @e[type=minecraft:marker,tag=ground,distance=..1,sort=nearest,limit=1]