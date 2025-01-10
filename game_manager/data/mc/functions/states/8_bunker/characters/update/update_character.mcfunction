# Constants
data modify storage minecraft:math x set value 1

# Check Status
  # Fatigue
  function mc:states/8_bunker/characters/update/update_character_fatigue with storage updatecharacters objective
  # Hunger
  function mc:states/8_bunker/characters/update/update_character_hunger with storage updatecharacters objective
  # Thirst
  function mc:states/8_bunker/characters/update/update_character_thirst with storage updatecharacters objective
  # Injuries
  function mc:states/8_bunker/characters/update/update_character_injuries with storage updatecharacters objective
  # Crazy
  function mc:states/8_bunker/characters/update/update_character_crazy with storage updatecharacters objective
  # Mental Breakdown
  execute if score crazy TedStatus matches 1 run function mc:states/8_bunker/characters/update/update_character_mental_breakdown with storage updatecharacters objective
  # Sickness
  function mc:states/8_bunker/characters/update/update_character_sickness with storage updatecharacters objective
  # Tiredness
  function mc:states/8_bunker/characters/update/update_character_tiredness with storage updatecharacters objective