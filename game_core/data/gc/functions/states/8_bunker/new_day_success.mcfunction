# Chest Menu
scoreboard players set @p[team=Player] MenuMain 0

# Show Day
function gc:states/8_bunker/show_day

# Check Expedition
function gc:states/8_bunker/check_expedition

# Bonous Items
execute if score day GameStatus matches 1 if score difficulty Settings matches 1..2 run function gc:states/8_bunker/items/process/manage_bonous_items

# Update Cosmetics
  # Kill Entities
  function gc:states/1_factory_reset/clear/clear_locations
  # Characters
  function gc:states/8_bunker/characters/manage_characters
  # Bundles
  function gc:states/8_bunker/items/process/manage_bundles
  # Items
  function gc:states/8_bunker/items/manage_items

# Chest Menu
function cm:place_chest_menu