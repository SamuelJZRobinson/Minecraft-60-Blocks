# Notes
  # SOUP_MIN increments by 5 from 1 to 25 and uses the formula (soup count - 1) * 4 parts + 1 offset

# Keep In Range
execute if score cans ItemsBunker matches ..-1 run scoreboard players set cans ItemsBunker 0

# Set Scores
execute if entity @s[tag=bunkerSoup1] run scoreboard players set SOUP_MIN RealCount 0
execute if entity @s[tag=bunkerSoup2] run scoreboard players set SOUP_MIN RealCount 1
execute if entity @s[tag=bunkerSoup3] run scoreboard players set SOUP_MIN RealCount 2
execute if entity @s[tag=bunkerSoup4] run scoreboard players set SOUP_MIN RealCount 3
execute if entity @s[tag=bunkerSoup5] run scoreboard players set SOUP_MIN RealCount 4
execute if entity @s[tag=bunkerSoup6] run scoreboard players set SOUP_MIN RealCount 5
execute if entity @s[tag=bunkerSoupBox] run scoreboard players set SOUP_MIN RealCount 6
scoreboard players operation SOUP_MIN RealCount *= DIVISOR RealCount
scoreboard players add SOUP_MIN RealCount 1

# Apply Model
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=!bunkerSoupBox,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 16
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=bunkerSoupBox,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 24
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=bunkerSoupBox,tag=!setModel] run summon area_effect_cloud -2.49 54.00 34.68 {Particle:"block air",Radius:0.51f,Duration:2147483647,Tags:["bunkerHitbox","bunkerSoup","hitboxSoupBox"]}
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=!setModel] run tag @s add setModel
execute if score bottles ItemsBunker matches 0 run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,tag=hitboxSoupBox]
scoreboard players remove SOUP_MIN RealCount 1
execute if score cans ItemsBunker <= SOUP_MIN RealCount if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 132
execute if score cans ItemsBunker <= SOUP_MIN RealCount if entity @s[tag=bunkerSoupBox,tag=setModel] run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=area_effect_cloud,tag=hitboxSoupBox]
execute if score cans ItemsBunker <= SOUP_MIN RealCount if entity @s[tag=setModel] run tag @s remove setModel