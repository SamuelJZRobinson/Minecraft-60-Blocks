# Spawn Soup
function gc:states/4_setup/items/summon/summon_soup

# Loop
scoreboard players remove soupCount ItemsHouse 1
execute if score soupCount ItemsHouse matches 1.. run function gc:states/4_setup/items/summon/summon_soups