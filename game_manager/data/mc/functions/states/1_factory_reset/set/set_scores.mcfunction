# Hide Scores
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay below_name

# Game Status
function mc:states/1_factory_reset/set/set_scores_game_status
function mc:states/1_factory_reset/set/set_scores_game_statistics
function mc:states/1_factory_reset/set/set_scores_settings

# Gameplay
  # Gamemodes
  function mc:states/1_factory_reset/set/set_scores_gamemodes
  # Items
  function mc:states/1_factory_reset/set/set_scores_items_house
  function mc:states/1_factory_reset/set/set_scores_items_bunker
  function mc:states/1_factory_reset/set/set_scores_items_bundles
  function mc:states/1_factory_reset/set/set_scores_items_expedition
  # Characters
  function mc:states/1_factory_reset/set/set_scores_characters_levels
  function mc:states/1_factory_reset/set/set_scores_characters_odds
  function mc:states/1_factory_reset/set/set_scores_characters
  function mc:states/1_factory_reset/set/set_scores_characters_count
  # Expedition
  function mc:states/1_factory_reset/set/set_scores_expedition_odds
  function mc:states/1_factory_reset/set/set_scores_mobs_expedition

# Complimentary Datapacks
function cm:load/set_scores_menu
function tf_raycast:load/set_scores_raycast

# Math
function mc:states/1_factory_reset/set/set_scores_math

# Exceptions
function mc:states/1_factory_reset/set/set_scores_exceptions