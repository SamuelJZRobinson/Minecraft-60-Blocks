# Notes
  # Specific items stay within specific room groups.
  # giveItem determines which item a room recieves including ammo (1), axe (2) gun (3), bug spray (4), and medkit (5).

# Select Room Group (1 to 4)
function mc:utility/math/get_random_range {x:1,y:4}
scoreboard players operation room ItemsHouse = out Math

### Does this actually work, when is giveItem ItemsHouse ever set?
# Update Room Group
function mc:states/4_setup/place/items/tag/tag_special_room
execute if score room ItemsHouse matches 5.. run scoreboard players set room ItemsHouse 1
function mc:states/4_setup/place/items/tag/tag_special_room

# Target Item
execute if score giveItem ItemsHouse matches 1 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeAmmo] run function mc:states/4_setup/place/items/tag/tag_special_item1
execute if score giveItem ItemsHouse matches 2 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeAxe] run function mc:states/4_setup/place/items/tag/tag_special_item1
execute if score giveItem ItemsHouse matches 3 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeGun] run function mc:states/4_setup/place/items/tag/tag_special_item1
execute if score giveItem ItemsHouse matches 4 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeBugSpray] run function mc:states/4_setup/place/items/tag/tag_special_item2
execute if score giveItem ItemsHouse matches 5 as @e[type=minecraft:slime,limit=1,x=24,y=69,z=-6,dy=1,tag=scavengeMedkit] run function mc:states/4_setup/place/items/tag/tag_special_item2

# Adjust Scores
scoreboard players remove itemCount ItemsHouse 1
scoreboard players add giveItem ItemsHouse 1

# Call Root
execute if score giveItem ItemsHouse matches 6.. run function mc:states/4_setup/place/items/refresh_scores
schedule function mc:states/4_setup/place/items/manage_items 1t replace