# Spawn
summon minecraft:slime ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"Item",DeathTime:19,DeathLootTable:"lt_custom:entities/soup_can",PersistenceRequired:1b,NoAI:1b,Health:1f,Size:0,Tags:["scavengeItem","scavengeSoup","oneSlot"],Passengers:[{id:"minecraft:armor_stand",Glowing:1b,Marker:1b,Invisible:1b,Tags:["scavengeItem","scavengeSoup"],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}]}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}]}

# Loop
scoreboard players remove soupCount ItemsHouse 1
execute if score soupCount ItemsHouse matches 1.. run function mc:states/stages/5_setup_house/place/items/spawn/spawn_soups