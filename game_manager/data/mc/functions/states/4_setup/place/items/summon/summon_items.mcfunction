# Notes
  # Spawn scripts are considered a utility since they're used in multiple states.

# Set Scores
scoreboard players set soupCount ItemsHouse 7
scoreboard players set waterCount ItemsHouse 8

# Official Items
function mc:states/4_setup/place/items/summon/summon_ammo
function mc:states/4_setup/place/items/summon/summon_axe
function mc:states/4_setup/place/items/summon/summon_boy_scout_handbook
function mc:states/4_setup/place/items/summon/summon_bug_spray
function mc:states/4_setup/place/items/summon/summon_cards
function mc:states/4_setup/place/items/summon/summon_flashlight
function mc:states/4_setup/place/items/summon/summon_gas_mask
function mc:states/4_setup/place/items/summon/summon_gun
function mc:states/4_setup/place/items/summon/summon_harmonica
function mc:states/4_setup/place/items/summon/summon_map
function mc:states/4_setup/place/items/summon/summon_medkit
function mc:states/4_setup/place/items/summon/summon_padlock
function mc:states/4_setup/place/items/summon/summon_radio
function mc:states/4_setup/place/items/summon/summon_soups
function mc:states/4_setup/place/items/summon/summon_suitcase
function mc:states/4_setup/place/items/summon/summon_waters
# Custom Items
function mc:states/4_setup/place/items/summon/summon_armour

# Tag Items
tag @e[type=slime,team=Items] add unassigned

# Step
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t