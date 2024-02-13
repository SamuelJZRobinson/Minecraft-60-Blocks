# Spawn
execute unless entity @e[type=minecraft:slime,tag=scavengeAmmo,limit=1] positioned 24.50 70.00 -5.50 run function mc:events/random_loadout/house/items/spawn_items

# Managed Items
scoreboard players set stage ItemsHouse 0
schedule function mc:events/random_loadout/house/items/manage_items 2t replace