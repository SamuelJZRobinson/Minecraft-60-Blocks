# Notes
  # As of 1.18.1 AOE clouds do not render in new positions after being teleported
  # Every second ground AOE was removed to halve memory consumption
  # Items are not allowed to spawn in doorways
  # Items have diffirent y offsets, including beds (0.56), slabs (0.50), walls (0.25), windows and trapdoors (0.19), and carpets (0.06)
  # The antiWall tag stops wall items from being placed, this is intended for windows and awkward positions
  # Each AOE cloud has a tag which determines the direction an item will face
  # Floorplan keeps track of what structure is loaded to avoid duplicate clones
  # Items initially spawn above the ceiling and lights to avoid suffocating in blocks
  # The room tag detection area looks underground to detect markers precisely on the floor

# Select Floorplan
  # Generate Random Number (1 in 6, n+1)
  scoreboard players set math_in1 em 1
  scoreboard players set math_in2 em 7
  function em:math/randomp

# Load Floorplans (Delay 0.35s)
execute if score math_out em matches 1 run function mc:events/random_loadout/house/floorplans/clone_floorplan1
execute if score math_out em matches 2 run function mc:events/random_loadout/house/floorplans/clone_floorplan2
execute if score math_out em matches 3 run function mc:events/random_loadout/house/floorplans/clone_floorplan3
execute if score math_out em matches 4 run function mc:events/random_loadout/house/floorplans/clone_floorplan4
execute if score math_out em matches 5 run function mc:events/random_loadout/house/floorplans/clone_floorplan5
execute if score math_out em matches 6 run function mc:events/random_loadout/house/floorplans/clone_floorplan6

# Load Characters
execute unless entity @e[type=minecraft:zombie,tag=houseMary,limit=1] run schedule function mc:events/random_loadout/house/characters/spawn_characters 10t replace

# Load Items
schedule function mc:events/random_loadout/house/items/spawn_items_check 12t replace