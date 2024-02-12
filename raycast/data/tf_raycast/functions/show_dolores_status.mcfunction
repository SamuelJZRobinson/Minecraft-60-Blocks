# Notes
  # Status checks repeated in cm:menu/page1/items_dolores

# Check Status
execute as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresName,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued DoloresStatus matches 1 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresFatigued,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel DoloresStatus matches 1 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresHungry,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel DoloresStatus matches 2 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresStarvation,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel DoloresStatus matches 1 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresHurt,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel DoloresStatus matches 2 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresAgony,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy DoloresStatus matches 1 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresCrazy,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score sick DoloresStatus matches 1 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresSick,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel DoloresStatus matches 1 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresThirsty,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel DoloresStatus matches 2 as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresDehydration,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score tired DoloresStatus matches 1.. as @e[x=-2,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=doloresTired,limit=1] run data modify entity @s CustomNameVisible set value 1b