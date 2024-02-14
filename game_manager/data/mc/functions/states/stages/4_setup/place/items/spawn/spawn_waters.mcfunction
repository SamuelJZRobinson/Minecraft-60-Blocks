# Spawn
function mc:states/stages/4_setup/place/items/spawn/spawn_water

# Loop
scoreboard players remove waterCount ItemsHouse 1
execute if score waterCount ItemsHouse matches 1.. run function mc:states/stages/4_setup/place/items/spawn/spawn_waters