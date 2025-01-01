# Spawn
execute unless entity @e[type=minecraft:slime,tag=scavengeAmmo,limit=1] positioned 24.50 70.00 -5.50 run function mc:utility/scavenge/items/spawn/spawn_items

# Call Root
function mc:states/4_setup_house/place/items/refresh_scores
schedule function mc:states/4_setup_house/place/items/manage_items 1t