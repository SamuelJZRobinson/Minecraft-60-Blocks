# Notes
  # giveItem determines which item a room recieves. 1 is ammo, 2 is axe, and 3 is gun, 4 is bug spray, and 5 is medkit.

# Select Random Room (1 to 4, n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 5
function em:math/randomp
scoreboard players operation room ItemsHouse = math_out em

# Update Room
function mc:states/stages/5_setup_house/place/items/tag/tag_special_update_room

# Keep In Range
execute if score room ItemsHouse matches 5.. run scoreboard players set room ItemsHouse 1

# Update Room (Repeat)
function mc:states/stages/5_setup_house/place/items/tag/tag_special_update_room

# Target Item
execute if score giveItem ItemsHouse matches 1 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeAmmo] run function mc:states/stages/5_setup_house/place/items/tag/tag_special_item1
execute if score giveItem ItemsHouse matches 2 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeAxe] run function mc:states/stages/5_setup_house/place/items/tag/tag_special_item1
execute if score giveItem ItemsHouse matches 3 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeGun] run function mc:states/stages/5_setup_house/place/items/tag/tag_special_item1
execute if score giveItem ItemsHouse matches 4 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeBugSpray] run function mc:states/stages/5_setup_house/place/items/tag/tag_special_item2
execute if score giveItem ItemsHouse matches 5 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeMedkit] run function mc:states/stages/5_setup_house/place/items/tag/tag_special_item2

# Adjust Scores
scoreboard players remove itemCount ItemsHouse 1
scoreboard players add giveItem ItemsHouse 1

# Call Root
execute if score giveItem ItemsHouse matches 6.. run function mc:states/stages/5_setup_house/place/items/refresh_scores
schedule function mc:states/stages/5_setup_house/place/items/manage_items 1t replace