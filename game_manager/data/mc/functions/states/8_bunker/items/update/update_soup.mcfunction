# Notes
  # SOUP_MIN increments by 5 from 1 to 25 and uses the formula (soup count - 1) * 4 parts + 1 offset

# Keep In Range
execute if score soups ItemsBunker matches ..-1 run scoreboard players set soups ItemsBunker 0

# Set Scores
execute if entity @s[tag=soup1] run scoreboard players set SOUP_MIN RealContainerCount 0
execute if entity @s[tag=soup2] run scoreboard players set SOUP_MIN RealContainerCount 1
execute if entity @s[tag=soup3] run scoreboard players set SOUP_MIN RealContainerCount 2
execute if entity @s[tag=soup4] run scoreboard players set SOUP_MIN RealContainerCount 3
execute if entity @s[tag=soup5] run scoreboard players set SOUP_MIN RealContainerCount 4
execute if entity @s[tag=soup6] run scoreboard players set SOUP_MIN RealContainerCount 5
execute if entity @s[tag=soupBox] run scoreboard players set SOUP_MIN RealContainerCount 6
scoreboard players operation SOUP_MIN RealContainerCount *= DIVISOR RealContainerCount
scoreboard players add SOUP_MIN RealContainerCount 1

# Apply Model
execute if score soups ItemsBunker >= SOUP_MIN RealContainerCount if entity @s[tag=!soupBox,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 16
execute if score soups ItemsBunker >= SOUP_MIN RealContainerCount if entity @s[tag=soupBox,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 24
execute if score soups ItemsBunker >= SOUP_MIN RealContainerCount if entity @s[tag=soupBox,tag=!setModel] run summon area_effect_cloud -2.49 54.00 34.68 {Particle:"block air",Radius:0.51f,Duration:2147483647,Tags:["bunkerHitbox","soup","hitboxSoupBox"]}
execute if score soups ItemsBunker >= SOUP_MIN RealContainerCount if entity @s[tag=!setModel] run tag @s add setModel
execute if score soups ItemsBunker matches 0 run kill @e[tag=hitboxSoupBox]
scoreboard players remove SOUP_MIN RealContainerCount 1
execute if score soups ItemsBunker <= SOUP_MIN RealContainerCount if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 132
execute if score soups ItemsBunker <= SOUP_MIN RealContainerCount if entity @s[tag=soupBox,tag=setModel] run kill @e[type=area_effect_cloud,tag=hitboxSoupBox]
execute if score soups ItemsBunker <= SOUP_MIN RealContainerCount if entity @s[tag=setModel] run tag @s remove setModel

# Merge Counter
function mc:states/8_bunker/items/count/count_soups
setblock 1 60 32 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Soup Supply:"}','[{"score":{"name":"soupsInt","objective":"RealContainerCount"}},{"text":"."},{"score":{"name":"soupsFloat","objective":"RealContainerCount"}}]','{"text":""}','{"text":""}']}} destroy
execute as @e[type=minecraft:armor_stand,tag=soupsCount] run data modify entity @s CustomName set from block 1 60 32 front_text.messages[1]