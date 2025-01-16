# Notes
  # Specific items stay within specific room groups.
  # giveItem determines which item a room recieves including ammo (1), axe (2) gun (3), bug spray (4), and medkit (5).

# Select Room Group (1 to 4)
execute store result score room ItemsHouse run random value 1..4

### Does this actually work, when is giveItem ItemsHouse ever set?
# Update Room Group
function mc:states/4_setup/place/items/tag/tag_rooms_special
execute if score room ItemsHouse matches 5.. run scoreboard players set room ItemsHouse 1
function mc:states/4_setup/place/items/tag/tag_rooms_special

# Target Item
execute if score giveItem ItemsHouse matches 1 as @e[type=minecraft:slime,limit=1,team=Items,tag=ammo,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_special_1
execute if score giveItem ItemsHouse matches 2 as @e[type=minecraft:slime,limit=1,team=Items,tag=axe,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_special_1
execute if score giveItem ItemsHouse matches 3 as @e[type=minecraft:slime,limit=1,team=Items,tag=gun,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_special_1
execute if score giveItem ItemsHouse matches 4 as @e[type=minecraft:slime,limit=1,team=Items,tag=bugSpray,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_special_2
execute if score giveItem ItemsHouse matches 5 as @e[type=minecraft:slime,limit=1,team=Items,tag=medkit,tag=unassigned] run function mc:states/4_setup/place/items/tag/tag_items_special_2

# Adjust Scores
scoreboard players remove itemCount ItemsHouse 1
scoreboard players add giveItem ItemsHouse 1

# Proceed
execute if score giveItem ItemsHouse matches 6.. run function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t replace