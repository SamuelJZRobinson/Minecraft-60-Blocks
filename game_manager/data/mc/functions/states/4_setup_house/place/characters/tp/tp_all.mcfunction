# Ted
execute unless score doTed Settings matches 1 as @e[type=minecraft:zombie,tag=houseTed,limit=1] run function mc:states/4_setup_house/place/characters/tp/tp_ted
# Dolores
execute unless score doTed Settings matches 0 as @e[type=minecraft:zombie,tag=houseDolores,limit=1] run function mc:states/4_setup_house/place/characters/tp/tp_dolores
# Mary Jane
execute as @e[type=minecraft:zombie,tag=houseMary,limit=1] run function mc:states/4_setup_house/place/characters/tp/tp_mary
# Timmy
execute as @e[type=minecraft:zombie,tag=houseTimmy,limit=1] run function mc:states/4_setup_house/place/characters/tp/tp_timmy