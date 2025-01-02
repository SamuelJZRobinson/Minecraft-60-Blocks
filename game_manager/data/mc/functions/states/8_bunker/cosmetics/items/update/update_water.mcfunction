# Notes
  # WATER_MIN increments by 5 from 1 to 25 and uses the formula (water count - 1) * 4 parts + 1 offset

# Keep In Range
execute if score bottles ItemsBunker matches ..-1 run scoreboard players set bottles ItemsBunker 0

# Set Scores
execute if entity @s[tag=bunkerWater1] run scoreboard players set WATER_MIN RealCount 0
execute if entity @s[tag=bunkerWater2] run scoreboard players set WATER_MIN RealCount 1
execute if entity @s[tag=bunkerWater3] run scoreboard players set WATER_MIN RealCount 2
execute if entity @s[tag=bunkerWater4] run scoreboard players set WATER_MIN RealCount 3
execute if entity @s[tag=bunkerWater5] run scoreboard players set WATER_MIN RealCount 4
execute if entity @s[tag=bunkerWater6] run scoreboard players set WATER_MIN RealCount 5
execute if entity @s[tag=bunkerWaterJug] run scoreboard players set WATER_MIN RealCount 6
scoreboard players operation WATER_MIN RealCount *= DIVISOR RealCount
scoreboard players add WATER_MIN RealCount 1

# Apply Model
execute if score bottles ItemsBunker >= WATER_MIN RealCount if entity @s[tag=!bunkerWaterJug,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 19
execute if score bottles ItemsBunker >= WATER_MIN RealCount if entity @s[tag=bunkerWaterJug,tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 25
execute if score bottles ItemsBunker >= WATER_MIN RealCount if entity @s[tag=bunkerWaterJug,tag=!setModel] run summon area_effect_cloud -2.70 54.00 33.50 {Particle:"block air",Radius:0.22f,Duration:2147483647,Tags:["bunker","bunkerHitbox","bunkerWater","hitboxWaterJug"]}
execute if score bottles ItemsBunker >= WATER_MIN RealCount if entity @s[tag=!setModel] run tag @s add setModel
execute if score bottles ItemsBunker matches 0 run kill @e[tag=hitboxWaterJug]
scoreboard players remove WATER_MIN RealCount 1
execute if score bottles ItemsBunker <= WATER_MIN RealCount if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 132
execute if score bottles ItemsBunker <= WATER_MIN RealCount if entity @s[tag=bunkerWaterJug,tag=setModel] run kill @e[type=area_effect_cloud,tag=hitboxWaterJug]
execute if score bottles ItemsBunker <= WATER_MIN RealCount if entity @s[tag=setModel] run tag @s remove setModel