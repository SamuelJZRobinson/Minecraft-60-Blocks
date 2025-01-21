# Notes
  # <character> alive is set to -1 to easily perform a death event before it's set to 0.

# Check Status
  # Fatigue
  function gc:states/8_bunker/characters/update/update_character_fatigue with storage updatecharacters objective
  # Hunger
  function gc:states/8_bunker/characters/update/update_character_hunger with storage updatecharacters objective
  # Thirst
  function gc:states/8_bunker/characters/update/update_character_thirst with storage updatecharacters objective
  # Injured
  function gc:states/8_bunker/characters/update/update_character_injured with storage updatecharacters objective
  # Crazy
  function gc:states/8_bunker/characters/update/update_character_crazy with storage updatecharacters objective
  # Sickness
  function gc:states/8_bunker/characters/update/update_character_sick with storage updatecharacters objective
  # Tiredness
  function gc:states/8_bunker/characters/update/update_character_tired with storage updatecharacters objective

# Death Event
function gc:states/8_bunker/characters/update/update_character_dead with storage updatecharacters objective