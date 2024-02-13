# Spawn
function mc:states/stages/5_setup_house/place/items/spawn/spawn_soup

# Loop
scoreboard players remove soupCount ItemsHouse 1
execute if score soupCount ItemsHouse matches 1.. run function mc:states/stages/5_setup_house/place/items/spawn/count_soup