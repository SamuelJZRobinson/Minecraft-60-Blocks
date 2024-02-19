# Notes
  # hide_expedition is called separately for efficency and to prevent triggering mc:status/characters/manage_characters
  # Duration must be set before reaching mc:events/daily/show_day to prevent errors

# Remember Values
scoreboard players operation characterSent ChestMenuExplore = characterSelect ChestMenuExplore
scoreboard players operation locationVisited ChestMenuExplore = locationSelect ChestMenuExplore
execute unless score preLocationVisited ChestMenuExplore = locationVisited ChestMenuExplore run scoreboard players operation preLocationVisited ChestMenuExplore = locationVisited ChestMenuExplore

# Make Character Tired
execute if score characterSent ChestMenuExplore matches 1 run scoreboard players operation tired DoloresStatus = expeditionDuration ChestMenuExplore
execute if score characterSent ChestMenuExplore matches 2 run scoreboard players operation tired MaryStatus = expeditionDuration ChestMenuExplore
execute if score characterSent ChestMenuExplore matches 4 run scoreboard players operation tired TedStatus = expeditionDuration ChestMenuExplore
execute if score characterSent ChestMenuExplore matches 5 run scoreboard players operation tired TimmyStatus = expeditionDuration ChestMenuExplore

# Set Duration
function mc:events/random_loadout/locations/items/items/set_duration

# Remove Items
function cm:pages/submit/manage_slot_give

# Debounce
scoreboard players set expeditionPrepared ChestMenuExplore 0

# Manage Gear And Manuel Mode
# Managed By mc:daily/show_day when the character returns

# Make Character Leave Bunker
function mc:status/characters/hide_expedition
function mc:sounds/bunker_door1