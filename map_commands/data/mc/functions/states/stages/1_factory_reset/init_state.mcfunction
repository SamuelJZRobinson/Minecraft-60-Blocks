# Hide Transition
effect give @a blindness 60 0 false

# Refresh Game
function mc:states/stages/1_factory_reset/clear/clear_schedules
schedule function mc:states/stages/1_factory_reset/set/set_gamerules 2t replace
schedule function mc:states/stages/1_factory_reset/set/set_teams 4t replace
schedule function mc:states/stages/1_factory_reset/set/set_scores 6t replace
schedule function mc:states/stages/1_factory_reset/set/set_bundles 8t replace
schedule function mc:states/stages/1_factory_reset/set/set_locations 10t replace
schedule function mc:states/stages/1_factory_reset/set/set_players 12t replace