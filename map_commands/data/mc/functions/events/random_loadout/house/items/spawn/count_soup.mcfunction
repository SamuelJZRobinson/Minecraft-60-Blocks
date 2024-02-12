# Spawn
function mc:events/random_loadout/house/items/spawn/spawn_soup

# Loop
scoreboard players remove soupCount ItemsHouse 1
execute if score soupCount ItemsHouse matches 1.. run function mc:events/random_loadout/house/items/spawn/count_soup