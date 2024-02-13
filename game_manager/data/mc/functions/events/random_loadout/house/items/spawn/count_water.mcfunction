# Spawn
function mc:events/random_loadout/house/items/spawn/spawn_water

# Loop
scoreboard players remove waterCount ItemsHouse 1
execute if score waterCount ItemsHouse matches 1.. run function mc:events/random_loadout/house/items/spawn/count_water