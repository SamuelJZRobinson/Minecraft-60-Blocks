# Spawn
function mc:states/stages/5_setup_house/place/items/spawn/spawn_water

# Loop
scoreboard players remove waterCount ItemsHouse 1
execute if score waterCount ItemsHouse matches 1.. run function mc:states/stages/5_setup_house/place/items/spawn/count_water