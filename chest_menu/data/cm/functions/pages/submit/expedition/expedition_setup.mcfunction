# Notes
  # hide_expedition is called separately for efficency and to prevent triggering mc:status/characters/manage_characters
  # Duration must be set before reaching mc:events/daily/show_day to prevent errors

# Remember Values
scoreboard players operation characterSent MenuExplore = characterSelect MenuExplore
scoreboard players operation locationVisited MenuExplore = locationSelect MenuExplore
execute unless score preLocationVisited MenuExplore = locationVisited MenuExplore run scoreboard players operation preLocationVisited MenuExplore = locationVisited MenuExplore

# Make Character Tired
execute if score characterSent MenuExplore matches 1 run scoreboard players operation tired DoloresStatus = expeditionDuration MenuExplore
execute if score characterSent MenuExplore matches 2 run scoreboard players operation tired MaryStatus = expeditionDuration MenuExplore
execute if score characterSent MenuExplore matches 4 run scoreboard players operation tired TedStatus = expeditionDuration MenuExplore
execute if score characterSent MenuExplore matches 5 run scoreboard players operation tired TimmyStatus = expeditionDuration MenuExplore

# Set Duration
function mc:events/random_loadout/locations/items/items/set_duration

# Remove Items
function cm:pages/submit/manage_slot_give

# Debounce
scoreboard players set expeditionPrepared MenuExplore 0

# Manage Gear And Manuel Mode
# Managed By mc:daily/show_day when the character returns

# Make Character Leave Bunker
function mc:status/characters/hide_expedition
function mc:sounds/bunker_door_1