# Spawn
summon minecraft:slime ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"Item",DeathTime:19,DeathLootTable:"lt_custom:entities/water_bottle",PersistenceRequired:1b,NoAI:1b,Health:1f,Size:0,Tags:["scavengeItem","scavengeWater","oneSlot"],Passengers:[{id:"minecraft:armor_stand",Glowing:1b,Marker:1b,Invisible:1b,Tags:["scavengeItem","scavengeWater"],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}]}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}]}

# Loop
scoreboard players remove waterCount ItemsHouse 1
execute if score waterCount ItemsHouse matches 1.. run function mc:states/stages/5_setup_house/place/items/spawn/spawn_waters