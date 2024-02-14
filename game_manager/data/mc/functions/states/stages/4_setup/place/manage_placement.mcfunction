# Notes:
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
  # Variables:
    ### should use more descriptive variable, waste of comment.
    # Floorplan keeps track of what structure is loaded to avoid duplicate clones.
  # Tags:
    # [north|east|south|west]: applies directions to parent markers inherited by child items that face it.
    # floor: indicates a default low position.
    # [table|wall]: indicates a high position, a random number of items are raised.
    # antiWall: stops wall items from being placed, specifically for windows and awkward positions.
    # room: looks underground to detect markers precisely on the floor.

# Select Floorplan
  # Generate Random Number (1 in 6, n+1)
  scoreboard players set math_in1 em 1
  scoreboard players set math_in2 em 7
  function em:math/randomp

# Floorplans
execute if score math_out em matches 1 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_1
execute if score math_out em matches 2 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_2
execute if score math_out em matches 3 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_3
execute if score math_out em matches 4 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_4
execute if score math_out em matches 5 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_5
execute if score math_out em matches 6 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_6

# Characters
execute unless entity @e[type=minecraft:zombie,tag=houseMary,limit=1] run schedule function mc:states/stages/4_setup/place/characters/spawn/spawn_characters 10t replace

# Items
schedule function mc:states/stages/4_setup/place/items/spawn/spawn_items_check 12t replace