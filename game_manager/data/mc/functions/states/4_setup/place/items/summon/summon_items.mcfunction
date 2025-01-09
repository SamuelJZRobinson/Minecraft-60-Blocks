# Notes
  # Spawn scripts are considered a utility since they're used in multiple states.

# Set Scores
scoreboard players set soupCount ItemsHouse 7
scoreboard players set waterCount ItemsHouse 8

# Official Items
execute unless entity @e[team=Items,type=slime,tag=ammo] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_ammo
execute unless entity @e[team=Items,type=slime,tag=axe] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_axe
execute unless entity @e[team=Items,type=slime,tag=handbook] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_boy_scout_handbook
execute unless entity @e[team=Items,type=slime,tag=bugSpray] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_bug_spray
execute unless entity @e[team=Items,type=slime,tag=cards] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_cards
execute unless entity @e[team=Items,type=slime,tag=flashlight] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_flashlight
execute unless entity @e[team=Items,type=slime,tag=gasMask] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_gas_mask
execute unless entity @e[team=Items,type=slime,tag=gun] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_gun
execute unless entity @e[team=Items,type=slime,tag=harmonica] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_harmonica
execute unless entity @e[team=Items,type=slime,tag=map] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_map
execute unless entity @e[team=Items,type=slime,tag=medkit] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_medkit
execute unless entity @e[team=Items,type=slime,tag=padlock] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_padlock
execute unless entity @e[team=Items,type=slime,tag=radio] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_radio
execute unless entity @e[team=Items,type=slime,tag=soup] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_soups
execute unless entity @e[team=Items,type=slime,tag=suitcase] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_suitcase
execute unless entity @e[team=Items,type=slime,tag=water] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_waters
# Custom Items
execute unless entity @e[team=Items,type=slime,tag=bodyArmour] positioned 24.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_body_armour

# Tag Items
tag @e[type=slime,team=Items] add unassigned

# Step
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t