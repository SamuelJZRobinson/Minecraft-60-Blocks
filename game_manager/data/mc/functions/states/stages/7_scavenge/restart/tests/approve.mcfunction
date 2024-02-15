# Reset Relevant Data
function mc:states/stages/1_factory_reset/clear/clear_schedules
schedule function mc:states/stages/1_factory_reset/set/scores/set_scores 2t replace
schedule function mc:states/stages/1_factory_reset/clear/clear_locations_house 4t replace
schedule function mc:states/stages/1_factory_reset/set/set_players 6t replace

# Set State
scoreboard players set state GameStatus 4
schedule function mc:states/stages/manage_states 8t replace