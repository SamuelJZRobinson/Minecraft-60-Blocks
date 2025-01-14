# Clear Data
data remove storage minecraft:itemsprocess charactersLostIds

# Clear Bunker Items
function mc:states/1_factory_reset/set/set_scores_characters

# Set Data
  # Ted
  data modify storage minecraft:itemsprocess charactersLostIds append value 19
  # Dolores
  data modify storage minecraft:itemsprocess charactersLostIds append value 21
  # Mary
  data modify storage minecraft:itemsprocess charactersLostIds append value 20
  # Timmy
  data modify storage minecraft:itemsprocess charactersLostIds append value 22

# Set Bundles
function mc:states/8_bunker/items/process/manage_bundles