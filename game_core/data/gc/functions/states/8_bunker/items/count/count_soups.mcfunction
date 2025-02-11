# Integer
scoreboard players operation soupsInt ItemsBunker = soups ItemsBunker
scoreboard players operation soupsInt ItemsBunker /= DIVISOR ItemsBunker
# Float
scoreboard players operation soupsFloat ItemsBunker = soups ItemsBunker
scoreboard players operation soupsFloat ItemsBunker %= DIVISOR ItemsBunker
scoreboard players operation soupsFloat ItemsBunker *= MULTIPLIER ItemsBunker
# Keep In Range
execute if score soups ItemsBunker matches ..-1 run scoreboard players set soups ItemsBunker 0
execute if score soups ItemsBunker matches ..0 run scoreboard players set soupsInt ItemsBunker 0
execute if score soups ItemsBunker matches ..0 run scoreboard players set soupsFloat ItemsBunker 0
# Store Storage
execute store result storage minecraft:itemsrealcount soupsInt int 1 run scoreboard players get soupsInt ItemsBunker
execute store result storage minecraft:itemsrealcount soupsFloat int 1 run scoreboard players get soupsFloat ItemsBunker