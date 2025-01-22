# Notes
  # manage_bundles is before characters to ensure they spawn.
  # manage_bundles is before items to ensure crazy item break changes items.
  # count is after bundles to ensure soup and water spawn after knowing their count.

# Effect
# effect give @p[team=Player] minecraft:blindness 4

# Bonous Items
execute if score ending GameStatus matches 0 if score day GameStatus matches 1 if score difficulty Settings matches 1..2 run function gc:states/8_bunker/items/process/manage_bonous_items

# Reset Bundle Data
  # Items
  data remove storage minecraft:bundles itemsGained
  data remove storage minecraft:bundles itemsLost
  # Characters
  data remove storage minecraft:bundles charactersGained
  data remove storage minecraft:bundles charactersLost

# Update Cosmetics
  # Kill Entities
  function gc:states/1_factory_reset/clear/clear_locations
  # Bundles
  function gc:states/8_bunker/items/process/manage_bundles
  # Count
  function gc:states/8_bunker/characters/count/count_family
  function gc:states/8_bunker/items/count/count_items
  # Characters
  function gc:states/8_bunker/characters/manage_characters
  # Bundles
  function gc:states/8_bunker/items/process/manage_bundles
  # Items
  function gc:states/8_bunker/items/manage_items

# Check Ending
function gc:states/8_bunker/check_ending

# Start Day
execute if score ending GameStatus matches 0 run function gc:states/8_bunker/new_day_success