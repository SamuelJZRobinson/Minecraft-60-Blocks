# Set Items
execute if score stage ItemsHouse matches 1 run function mc:utility/scavenge/items/spawn/spawn_items_check
execute if score stage ItemsHouse matches 2 run function mc:states/4_setup_house/place/items/set/set_room_count
execute if score stage ItemsHouse matches 3 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeSoup] run function mc:states/4_setup_house/place/items/tag/tag_soup
execute if score stage ItemsHouse matches 4 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeWater] run function mc:states/4_setup_house/place/items/tag/tag_water
execute if score stage ItemsHouse matches 5 run function mc:states/4_setup_house/place/items/tag/tag_special
execute if score stage ItemsHouse matches 6 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeItem] run function mc:states/4_setup_house/place/items/tag/tag_general
execute if score stage ItemsHouse matches 7 run function mc:states/4_setup_house/place/items/set/set_raised_items
execute if score stage ItemsHouse matches 8 run function mc:states/4_setup_house/place/items/raise/raise_wall_items
execute if score stage ItemsHouse matches 9 run function mc:states/4_setup_house/place/items/raise/raise_table_items