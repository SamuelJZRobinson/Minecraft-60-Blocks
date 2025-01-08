# Integer
scoreboard players operation soupsInt ItemsBunker = soups ItemsBunker
scoreboard players operation soupsInt ItemsBunker /= DIVISOR ItemsBunker
# Float
scoreboard players operation soupsFloat ItemsBunker = soups ItemsBunker
scoreboard players operation soupsFloat ItemsBunker %= DIVISOR ItemsBunker
scoreboard players operation soupsFloat ItemsBunker *= MULTIPLIER ItemsBunker
# Keep In Range
execute if score soups ItemsBunker matches ..-1 run scoreboard players set soups ItemsBunker 0