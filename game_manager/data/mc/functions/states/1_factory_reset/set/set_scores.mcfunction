# Hide Objectives
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay below_name

# Datapacks
function cm:load/set_scores_menu
function mc:states/1_factory_reset/set/set_scores_math
function tf_raycast:load/set_scores_raycast

# Gamemodes
function mc:states/1_factory_reset/set/set_scores_gamemodes
# Gameplay
function mc:states/1_factory_reset/set/set_scores_items_house
function mc:states/1_factory_reset/set/set_scores_items_bunker
function mc:states/1_factory_reset/set/set_scores_items_bundles
function mc:states/1_factory_reset/set/set_scores_items_expedition
function mc:states/1_factory_reset/set/set_scores_expedition_odds
function mc:states/1_factory_reset/set/set_scores_characters_status_levels
function mc:states/1_factory_reset/set/set_scores_characters_status_odds
function mc:states/1_factory_reset/set/set_scores_characters
function mc:states/1_factory_reset/set/set_scores_expedition
# Game Metrics
function mc:states/1_factory_reset/set/set_scores_game_status
function mc:states/1_factory_reset/set/set_scores_game_statistics

function mc:states/1_factory_reset/set/set_scores_settings
function mc:states/1_factory_reset/set/set_scores_exceptions