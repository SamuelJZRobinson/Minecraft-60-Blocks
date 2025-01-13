# Notes
  # Spawn scripts are considered a utility since they're used in multiple states.

# Set Scores
scoreboard players set soupCount ItemsHouse 7
scoreboard players set waterCount ItemsHouse 8

# Official Items
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_ammo
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_axe
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_boy_scout_handbook
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_bug_spray
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_cards
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_flashlight
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_gas_mask
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_gun
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_harmonica
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_map
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_medkit
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_padlock
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_radio
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_soups
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_suitcase
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_waters
# Custom Items
execute positioned 21.50 -24.00 1.50 run function mc:states/4_setup/place/items/summon/summon_body_armour

# Tag Items
tag @e[type=slime,team=Items] add unassigned

# Step
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t