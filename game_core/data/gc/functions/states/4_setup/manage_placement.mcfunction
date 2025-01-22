# Houses Layout:
  # Areas:
    # Hallway: middle of the house attatched to triple rooms and double rooms.
    # Rooms: independent side rooms arranged within triple rooms and double rooms including:
      # Bathroom
      # Kid's bedroom
      # Kitchen
      # Lounge
      # Master bedroom
      # Side bathroom 
  # Each room needs at least 9 ground spaces to avoid a teleportation error
  # Main markers cover the entire centre of house.
  # West and east markers cover a side room that is not a salvage area.
  # Markers are tagged with their room name.
  # Markers enable items to teleport into valid predefined random locations.

# Item Placement:
  # Items spawn above the ceiling to avoid suffocating and player interference.
  # Items cannot spawn in doorways.
  # Block item y offsets include:
    # Beds: 0.56
    # Slabs: 0.50
    # Walls: 0.25
    # Windows and trapdoors: 0.19
    # Carpets: 0.06

# Tags:
  # [north|east|south|west]: applies directions to parent markers inherited by child items that face it.
  # floor: indicates a default low position.
  # [table|wall]: indicates a high position, a random number of items are raised.
  # antiWall: stops wall items from being placed, specifically for windows and awkward positions.
  # room: looks underground to detect markers precisely on the floor.

# Place House Contents
  # Floorplans
  function gc:states/4_setup/floorplans/manage_floorplans
  # Characters
  function gc:states/4_setup/characters/manage_characters
  # Items
  scoreboard players set step ItemsHouse 1
  function gc:states/4_setup/items/manage_items