# Notes
  # refresh_maps must come after refresh_scores due to testing if the clock equals 0

# Give Everyone Blindness
effect give @a blindness 60 0 false

# Refresh Game
function mc:quit/refresh_scripts
# execute if score preLocationVisited ChestMenuExplore matches 1.. run function mc:timers/expedition/clear_location_entities
schedule function mc:quit/refresh_scores 2t
schedule function mc:quit/refresh_locations 4t
schedule function mc:quit/refresh_players 6t