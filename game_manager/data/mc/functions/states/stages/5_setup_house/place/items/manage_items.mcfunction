# Set Items
execute if score stage ItemsHouse matches 0 run function mc:states/stages/5_setup_house/place/items/set_room_count
execute if score stage ItemsHouse matches 1 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeSoup] run function mc:states/stages/5_setup_house/place/items/tag_soup
execute if score stage ItemsHouse matches 2 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeWater] run function mc:states/stages/5_setup_house/place/items/tag_water
execute if score stage ItemsHouse matches 3 run function mc:states/stages/5_setup_house/place/items/tag_special
execute if score stage ItemsHouse matches 4 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeItem] run function mc:states/stages/5_setup_house/place/items/tag_general
execute if score stage ItemsHouse matches 5 run function mc:states/stages/5_setup_house/place/items/set_raised_items
execute if score stage ItemsHouse matches 6 run function mc:states/stages/5_setup_house/place/items/raise_wall_items
execute if score stage ItemsHouse matches 7 run function mc:states/stages/5_setup_house/place/items/raise_table_items