# Integer
scoreboard players operation watersInt ItemsBunker = waters ItemsBunker
scoreboard players operation watersInt ItemsBunker /= DIVISOR ItemsBunker
# Float
scoreboard players operation watersFloat ItemsBunker = waters ItemsBunker
scoreboard players operation watersFloat ItemsBunker %= DIVISOR ItemsBunker
scoreboard players operation watersFloat ItemsBunker *= MULTIPLIER ItemsBunker
# Keep In Range
execute if score waters ItemsBunker matches ..-1 run scoreboard players set waters ItemsBunker 0
execute if score waters ItemsBunker matches ..0 run scoreboard players set watersInt ItemsBunker 0
execute if score waters ItemsBunker matches ..0 run scoreboard players set watersFloat ItemsBunker 0
# Store Storage
execute store result storage minecraft:itemsrealcount watersInt int 1 run scoreboard players get watersInt ItemsBunker
execute store result storage minecraft:itemsrealcount watersFloat int 1 run scoreboard players get watersFloat ItemsBunker