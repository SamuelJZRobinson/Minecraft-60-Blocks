# Spawn
execute unless entity @e[type=minecraft:slime,tag=scavengeAmmo,limit=1] positioned 24.50 70.00 -5.50 run function mc:states/stages/5_setup_house/place/items/spawn/spawn_items

# Managed Items
scoreboard players set stage ItemsHouse 0
schedule function mc:states/stages/5_setup_house/place/items/manage_items 2t replace