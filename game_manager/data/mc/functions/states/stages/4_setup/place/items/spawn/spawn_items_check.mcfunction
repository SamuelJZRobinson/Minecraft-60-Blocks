# Spawn
execute unless entity @e[type=minecraft:slime,tag=scavengeAmmo,limit=1] positioned 24.50 70.00 -5.50 run function mc:states/stages/4_setup/place/items/spawn/spawn_items

# Call Root
function mc:states/stages/4_setup/place/items/refresh_scores
schedule function mc:states/stages/4_setup/place/items/manage_items 1t