# Teleport Characters To Random Spaces And Remove AOE
execute if score character Lobby matches 0 as @e[type=minecraft:zombie,tag=houseDolores,limit=1] run function mc:events/random_loadout/house/characters/tp_dolores
execute as @e[type=minecraft:zombie,tag=houseMary,limit=1] run function mc:events/random_loadout/house/characters/tp_mary
execute if score character Lobby matches 1 as @e[type=minecraft:zombie,tag=houseTed,limit=1] run function mc:events/random_loadout/house/characters/tp_ted
execute as @e[type=minecraft:zombie,tag=houseTimmy,limit=1] run function mc:events/random_loadout/house/characters/tp_timmy