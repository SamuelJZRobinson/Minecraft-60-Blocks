# Spawn Soup
function mc:utility/scavenge/items/spawn/spawn_soup

# Loop
scoreboard players remove soupCount ItemsHouse 1
execute if score soupCount ItemsHouse matches 1.. run function mc:utility/scavenge/items/spawn/spawn_soups