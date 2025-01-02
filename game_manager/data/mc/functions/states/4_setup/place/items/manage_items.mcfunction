# Check Items Spawned
execute if score step ItemsHouse matches 1 positioned 24.50 70.00 -5.50 run function mc:states/4_setup/place/items/summon/summon_items
# Set Room Item Count
execute if score step ItemsHouse matches 2 run function mc:states/4_setup/place/items/set/set_room_count
# Tag Items
execute if score step ItemsHouse matches 3 as @e[type=minecraft:slime,limit=1,team=Items,tag=soup,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_soup
execute if score step ItemsHouse matches 4 as @e[type=minecraft:slime,limit=1,team=Items,tag=water,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_water
execute if score step ItemsHouse matches 5 run function mc:states/4_setup/place/items/tag/tag_items_special
execute if score step ItemsHouse matches 6 as @e[type=minecraft:slime,limit=1,team=Items,tag=scavengeItem,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_general
# Set Items
execute if score step ItemsHouse matches 7 run function mc:states/4_setup/place/items/set/set_raised_items
execute if score step ItemsHouse matches 8 run function mc:states/4_setup/place/items/raise/raise_wall_items
execute if score step ItemsHouse matches 9 run function mc:states/4_setup/place/items/raise/raise_table_items