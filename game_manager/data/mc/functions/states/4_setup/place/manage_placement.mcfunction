# Place House Contents
  # Floorplans
  function mc:states/4_setup/place/floorplans/manage_floorplans
  # Characters
  schedule function mc:states/4_setup/place/characters/manage_characters 5t replace
  # Items
  scoreboard players set step ItemsHouse 1
  schedule function mc:states/4_setup/place/items/manage_items 6t replace