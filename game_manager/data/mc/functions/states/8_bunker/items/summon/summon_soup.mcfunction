# Label Counter
summon minecraft:armor_stand ~5 ~2.25 ~1 {CustomNameVisible:0b,Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerTitle","soupsTitle"],DisabledSlots:4144959,CustomName:'{"text":"Food supply:","color":"white"}'}
summon minecraft:armor_stand ~5 ~2.00 ~1 {CustomNameVisible:0b,Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerTitle","soupsTitle","soupsCount"],DisabledSlots:4144959,CustomName:'{"text":"#"}'}
# Merge Soup Count
setblock 3 -42 -11 oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Soup Supply:"}','[{"score":{"name":"soupsInt","objective":"ItemsBunker"}},{"text":"."},{"score":{"name":"soupsFloat","objective":"ItemsBunker"}}]','{"text":""}','{"text":""}']}} destroy
execute as @e[type=minecraft:armor_stand,tag=soupsCount] run data modify entity @s CustomName set from block 3 -42 -11 front_text.messages[1]
# Item
execute if score soupsInt ItemsBunker matches 1.. run summon minecraft:armor_stand ~3.75 ~2.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","soup","soup1"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}]}
execute if score soupsInt ItemsBunker matches 5.. run summon minecraft:armor_stand ~4.25 ~2.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","soup","soup2"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}]}
execute if score soupsInt ItemsBunker matches 9.. run summon minecraft:armor_stand ~4.75 ~2.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","soup","soup3"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}]}
execute if score soupsInt ItemsBunker matches 13.. run summon minecraft:armor_stand ~5.25 ~2.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","soup","soup4"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}]}
execute if score soupsInt ItemsBunker matches 17.. run summon minecraft:armor_stand ~5.75 ~2.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","soup","soup5"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}]}
execute if score soupsInt ItemsBunker matches 21.. run summon minecraft:armor_stand ~6.25 ~2.38 ~ {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","soup","soup6"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:16}}]}
execute if score soupsInt ItemsBunker matches 25.. run summon minecraft:armor_stand ~6.09 ~0.22 ~1 {Team:Items,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["bunkerItem","soup","soupBox"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:saddle",Count:1b,tag:{CustomModelData:24}}]}
# Hitbox
summon interaction ~5 ~2 ~-1 {width:3f,height:0.5f,Tags:["bunkerHitbox","soup","hitboxSoup"]}
execute if score soupsInt ItemsBunker matches 25.. run summon interaction ~6.09 ~ ~0.8 {width:1f,height:0.6f,Tags:["bunkerHitbox","soup","hitboxSoup"]}