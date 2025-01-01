# Spawn Soup
function mc:states/4_setup/place/items/summon/summon_soup

# Loop
scoreboard players remove soupCount ItemsHouse 1
execute if score soupCount ItemsHouse matches 1.. run function mc:states/4_setup/place/items/summon/summon_soups