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
  # Bunker
  function mc:states/1_factory_reset/set/set_scores_bunker_odds
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
  function mc:states/1_factory_reset/set/set_scores_characters_expedition
  # Expedition
  function mc:states/1_factory_reset/set/set_scores_expedition_odds
  function mc:states/1_factory_reset/set/set_scores_mobs_expedition

# Other Datapacks
function mc:states/1_factory_reset/set/set_scores_datapacks

# Math
function mc:states/1_factory_reset/set/set_scores_math

# Exceptions
function mc:states/1_factory_reset/set/set_scores_exceptions