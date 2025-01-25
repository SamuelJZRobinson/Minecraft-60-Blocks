# Clear Data
data remove storage minecraft:itemsprocess charactersGainedIds

# Clear Bunker Items
function gc:states/1_factory_reset/set/set_scores_characters

# Set Data
  # Ted
  data modify storage minecraft:itemsprocess charactersGainedIds append value 19
  # Dolores
  data modify storage minecraft:itemsprocess charactersGainedIds append value 21
  # Mary
  data modify storage minecraft:itemsprocess charactersGainedIds append value 20
  # Timmy
  data modify storage minecraft:itemsprocess charactersGainedIds append value 22

# Set Bundles
function gc:states/8_bunker/items/process/manage_bundles