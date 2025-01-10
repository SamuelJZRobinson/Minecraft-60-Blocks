# Label Counter
summon minecraft:armor_stand ~5 ~3.25 ~1 {CustomNameVisible:0b,Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerTitle","watersTitle"],DisabledSlots:4144959,CustomName:'{"text":"Water supply:","color":"white"}'}
summon minecraft:armor_stand ~5 ~3.00 ~1 {CustomNameVisible:0b,Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerTitle","watersTitle","watersCount"],DisabledSlots:4144959,CustomName:'{"text":"#"}'}
# Merge Water Count
setblock -9 -42 -12 oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Water Supply:"}','[{"score":{"name":"watersInt","objective":"ItemsBunker"}},{"text":"."},{"score":{"name":"watersFloat","objective":"ItemsBunker"}}]','{"text":""}','{"text":""}']}} destroy
execute as @e[type=minecraft:armor_stand,tag=watersCount] run data modify entity @s CustomName set from block -9 -42 -12 front_text.messages[1]
# Item
execute if score watersInt ItemsBunker matches 1.. run summon minecraft:armor_stand ~3.75 ~3.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","water","water1"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}]}
execute if score watersInt ItemsBunker matches 5.. run summon minecraft:armor_stand ~4.25 ~3.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","water","water2"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}]}
execute if score watersInt ItemsBunker matches 9.. run summon minecraft:armor_stand ~4.75 ~3.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","water","water3"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}]}
execute if score watersInt ItemsBunker matches 13.. run summon minecraft:armor_stand ~5.25 ~3.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","water","water4"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}]}
execute if score watersInt ItemsBunker matches 17.. run summon minecraft:armor_stand ~5.75 ~3.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","water","water5"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}]}
execute if score watersInt ItemsBunker matches 21.. run summon minecraft:armor_stand ~6.25 ~3.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","water","water6"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:19}}]}
execute if score watersInt ItemsBunker matches 25.. run summon minecraft:armor_stand ~6.17 ~0.43 ~2 {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","water","waterJug"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:25}}]}
# Hitbox
summon interaction ~5 ~3 ~-1 {width:3f,height:0.7f,Tags:["bunkerHitbox","water","hitboxWater"]}
execute if score watersInt ItemsBunker matches 24.. run summon interaction ~6.17 ~ ~2 {width:0.45f,height:0.65f,Tags:["bunkerHitbox","water","hitboxWaterJug"]}