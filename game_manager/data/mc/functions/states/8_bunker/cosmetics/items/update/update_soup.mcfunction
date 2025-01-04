# Notes
  # SOUP_MIN increments by 5 from 1 to 25 and uses the formula (soup count - 1) * 4 parts + 1 offset

# Keep In Range
execute if score cans ItemsBunker matches ..-1 run scoreboard players set cans ItemsBunker 0

# Set Scores
execute if entity @s[tag=soup1] run scoreboard players set SOUP_MIN RealCount 0
execute if entity @s[tag=soup2] run scoreboard players set SOUP_MIN RealCount 1
execute if entity @s[tag=soup3] run scoreboard players set SOUP_MIN RealCount 2
execute if entity @s[tag=soup4] run scoreboard players set SOUP_MIN RealCount 3
execute if entity @s[tag=soup5] run scoreboard players set SOUP_MIN RealCount 4
execute if entity @s[tag=soup6] run scoreboard players set SOUP_MIN RealCount 5
execute if entity @s[tag=soupBox] run scoreboard players set SOUP_MIN RealCount 6
scoreboard players operation SOUP_MIN RealCount *= DIVISOR RealCount
scoreboard players add SOUP_MIN RealCount 1

# Apply Model
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=!soupBox,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 16
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=soupBox,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 24
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=soupBox,tag=!setModel] run summon area_effect_cloud -2.49 54.00 34.68 {Particle:"block air",Radius:0.51f,Duration:2147483647,Tags:["bunkerHitbox","soup","hitboxSoupBox"]}
execute if score cans ItemsBunker >= SOUP_MIN RealCount if entity @s[tag=!setModel] run tag @s add setModel
execute if score bottles ItemsBunker matches 0 run kill @e[tag=hitboxSoupBox]
scoreboard players remove SOUP_MIN RealCount 1
execute if score cans ItemsBunker <= SOUP_MIN RealCount if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 132
execute if score cans ItemsBunker <= SOUP_MIN RealCount if entity @s[tag=soupBox,tag=setModel] run kill @e[type=area_effect_cloud,tag=hitboxSoupBox]
execute if score cans ItemsBunker <= SOUP_MIN RealCount if entity @s[tag=setModel] run tag @s remove setModel