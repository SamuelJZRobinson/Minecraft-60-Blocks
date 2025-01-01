# Spawn Items If One Doesn't Exist
execute unless entity @e[type=minecraft:slime,tag=scavengeAmmo,limit=1] positioned 24.50 70.00 -5.50 run function mc:states/4_setup/place/items/summon/summon_items

# Call Root
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t