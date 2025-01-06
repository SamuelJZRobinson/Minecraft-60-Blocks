# Notes
  # WATER_MIN increments by 5 from 1 to 25 and uses the formula (water count - 1) * 4 parts + 1 offset

# Keep In Range
execute if score waters ItemsBunker matches ..-1 run scoreboard players set waters ItemsBunker 0

# Set Scores
execute if entity @s[tag=water1] run scoreboard players set WATER_MIN RealContainerCount 0
execute if entity @s[tag=water2] run scoreboard players set WATER_MIN RealContainerCount 1
execute if entity @s[tag=water3] run scoreboard players set WATER_MIN RealContainerCount 2
execute if entity @s[tag=water4] run scoreboard players set WATER_MIN RealContainerCount 3
execute if entity @s[tag=water5] run scoreboard players set WATER_MIN RealContainerCount 4
execute if entity @s[tag=water6] run scoreboard players set WATER_MIN RealContainerCount 5
execute if entity @s[tag=waterJug] run scoreboard players set WATER_MIN RealContainerCount 6
scoreboard players operation WATER_MIN RealContainerCount *= DIVISOR RealContainerCount
scoreboard players add WATER_MIN RealContainerCount 1

# Apply Model
execute if score waters ItemsBunker >= WATER_MIN RealContainerCount if entity @s[tag=!waterJug,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 19
execute if score waters ItemsBunker >= WATER_MIN RealContainerCount if entity @s[tag=waterJug,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 25
execute if score waters ItemsBunker >= WATER_MIN RealContainerCount if entity @s[tag=waterJug,tag=!setModel] run summon area_effect_cloud -2.70 54.00 33.50 {Particle:"block air",Radius:0.22f,Duration:2147483647,Tags:["bunkerHitbox","water","hitboxWaterJug"]}
execute if score waters ItemsBunker >= WATER_MIN RealContainerCount if entity @s[tag=!setModel] run tag @s add setModel
execute if score waters ItemsBunker matches 0 run kill @e[tag=hitboxWaterJug]
scoreboard players remove WATER_MIN RealContainerCount 1
execute if score waters ItemsBunker <= WATER_MIN RealContainerCount if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 132
execute if score waters ItemsBunker <= WATER_MIN RealContainerCount if entity @s[tag=waterJug,tag=setModel] run kill @e[type=area_effect_cloud,tag=hitboxWaterJug]
execute if score waters ItemsBunker <= WATER_MIN RealContainerCount if entity @s[tag=setModel] run tag @s remove setModel

# Merge Counter
function mc:states/8_bunker/items/count/count_waters
setblock 1 60 31 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"Water Supply:"}','[{"score":{"name":"watersInt","objective":"RealContainerCount"}},{"text":"."},{"score":{"name":"watersFloat","objective":"RealContainerCount"}}]','{"text":""}','{"text":""}']}} destroy
execute as @e[type=minecraft:armor_stand,tag=watersCount] run data modify entity @s CustomName set from block 1 60 31 front_text.messages[1]