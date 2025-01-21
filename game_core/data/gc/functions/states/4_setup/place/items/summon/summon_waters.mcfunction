# Spawn Water
function gc:states/4_setup/place/items/summon/summon_water

# Loop
scoreboard players remove waterCount ItemsHouse 1
execute if score waterCount ItemsHouse matches 1.. run function gc:states/4_setup/place/items/summon/summon_waters