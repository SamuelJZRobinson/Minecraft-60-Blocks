# Notes
  # hide_expedition is called separately for efficency and to prevent triggering mc:status/characters/manage_characters
  # Duration must be set before reaching mc:events/daily/show_day to prevent errors
  # Gear managed by mc:daily/show_day when the character returns

# Remember Values
scoreboard players operation characterSent MenuExplore = characterSelect MenuExplore
scoreboard players operation mapVisited MenuExplore = mapSelect MenuExplore
execute unless score preMap MenuExplore = mapVisited MenuExplore run scoreboard players operation preMap MenuExplore = mapVisited MenuExplore

# Make Character Tired
execute if score characterSent MenuExplore matches 1 run scoreboard players operation tired DoloresStatus = expeditionDuration MenuExplore
execute if score characterSent MenuExplore matches 2 run scoreboard players operation tired MaryStatus = expeditionDuration MenuExplore
execute if score characterSent MenuExplore matches 4 run scoreboard players operation tired TedStatus = expeditionDuration MenuExplore
execute if score characterSent MenuExplore matches 5 run scoreboard players operation tired TimmyStatus = expeditionDuration MenuExplore

# Set Duration
function cm:pages/submit/expedition/set_duration

# Remove Items From Bunker
function cm:pages/submit/manage_slot_give

# Debounce
scoreboard players set expeditionActive MenuExplore 0

# Manage Gear And POV Mode


# # Make Character Leave Bunker
# function mc:status/characters/hide_expedition
# function mc:sounds/bunker_door_1


function mc:states/stages/8_bunker/cosmetics/characters/update/update_expedition_hide