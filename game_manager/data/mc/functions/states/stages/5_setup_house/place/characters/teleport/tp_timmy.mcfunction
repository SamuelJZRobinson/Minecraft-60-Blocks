teleport @s @e[type=minecraft:marker,tag=floor,sort=random,limit=1]
execute at @s run kill @e[type=minecraft:marker,tag=floor,distance=..1,sort=nearest,limit=1]