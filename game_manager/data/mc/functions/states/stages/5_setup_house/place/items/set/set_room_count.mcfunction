# Notes
  # The sum of maximum random room items (except hallway bonous) must equal total house items
  # After initially dedicating loot to each room the hallway has a second chance to get leftover items
  # soupLeft and waterLeft allocate leftover food to the hallway and break recursive tag functions
  # Since loot tables lack support for a base value their output is unreliable when each entry has diffirent weights
  # Never set hallway size to 0 when debugging because it is intended to receive leftover items
  # Each room needs at least 9 ground spaces to avoid a teleportation error
  # killItems determines if armourstands are broken when teleported or host magma cubes are missing

# Count Items
execute store result score itemCount ItemsHouse if entity @e[type=minecraft:slime,tag=scavengeItem]
execute store result score soupLeft ItemsHouse if entity @e[type=minecraft:slime,tag=scavengeSoup]
execute store result score waterLeft ItemsHouse if entity @e[type=minecraft:slime,tag=scavengeWater]

# Set Base Item Count
  # Bathroom (2 to 3, n+1)
  scoreboard players set math_in1 em 2
  scoreboard players set math_in2 em 4
  function em:math/randomp
  scoreboard players operation bathroom ItemsHouse = math_out em

  # Hallway (0 to 2, n+1)
  scoreboard players set math_in1 em 0
  scoreboard players set math_in2 em 3
  function em:math/randomp
  scoreboard players operation hallway ItemsHouse = math_out em

  # Kids Room (3 to 5, n+1)
  scoreboard players set math_in1 em 3
  scoreboard players set math_in2 em 6
  function em:math/randomp
  scoreboard players operation kidsBedroom ItemsHouse = math_out em

  # Kitchen (6 to 8, n+1)
  scoreboard players set math_in1 em 6
  scoreboard players set math_in2 em 9
  function em:math/randomp
  scoreboard players operation kitchen ItemsHouse = math_out em

  # Lounge (3 to 5, n+1)
  scoreboard players set math_in1 em 3
  scoreboard players set math_in2 em 6
  function em:math/randomp
  scoreboard players operation lounge ItemsHouse = math_out em

  # Master Bedroom (3 to 5, n+1)
  scoreboard players set math_in1 em 3
  scoreboard players set math_in2 em 6
  function em:math/randomp
  scoreboard players operation masterBedroom ItemsHouse = math_out em

  # Side Bathroom (2 to 3, n+1)
  scoreboard players set math_in1 em 2
  scoreboard players set math_in2 em 4
  function em:math/randomp
  scoreboard players operation sideBathroom ItemsHouse = math_out em

# Calculate Remaining Items
  # Sum Allocated Items
  scoreboard players set allocated ItemsHouse 0
  scoreboard players operation allocated ItemsHouse += bathroom ItemsHouse
  scoreboard players operation allocated ItemsHouse += hallway ItemsHouse
  scoreboard players operation allocated ItemsHouse += kidsBedroom ItemsHouse
  scoreboard players operation allocated ItemsHouse += kitchen ItemsHouse
  scoreboard players operation allocated ItemsHouse += lounge ItemsHouse
  scoreboard players operation allocated ItemsHouse += masterBedroom ItemsHouse
  scoreboard players operation allocated ItemsHouse += sideBathroom ItemsHouse
  # Subtract Sum From Total Items
  scoreboard players operation remainder ItemsHouse = itemCount ItemsHouse
  scoreboard players operation remainder ItemsHouse -= allocated ItemsHouse

# Set Random Hallway Bonous Item Count
  # Generate Number According To Remainder (0 to ?, n+1)
  scoreboard players set math_in1 em 0
  execute if score remainder ItemsHouse matches 0 run scoreboard players set math_in2 em 1
  execute if score remainder ItemsHouse matches 1 run scoreboard players set math_in2 em 2
  execute if score remainder ItemsHouse matches 2 run scoreboard players set math_in2 em 3
  execute if score remainder ItemsHouse matches 3.. run scoreboard players set math_in2 em 4
  function em:math/randomp
  # Adjust Scores With Output
  scoreboard players operation hallway ItemsHouse += math_out em
  scoreboard players operation allocated ItemsHouse += math_out em
  scoreboard players operation remainder ItemsHouse -= math_out em

# Compensate Remaining Items
execute if score remainder ItemsHouse matches 1.. run function mc:states/stages/5_setup_house/place/items/set/set_room_count_fix_leftovers

# Assign Items For Specific Rooms
  # Kitchen Soup (3 to 5, n+1)
  scoreboard players set math_in1 em 3
  scoreboard players set math_in2 em 6
  function em:math/randomp
  # Adjust Scores With Output
  scoreboard players operation kitchenSoup ItemsHouse = math_out em
  scoreboard players operation soupLeft ItemsHouse -= kitchenSoup ItemsHouse

  # Kitchen Water (1 to 3, n+1)
  # Reduce math_in2 If Kitchen Is Smaller
  scoreboard players operation diffirence ItemsHouse = kitchen ItemsHouse
  scoreboard players operation diffirence ItemsHouse -= kitchenSoup ItemsHouse
  scoreboard players operation math_in2 em = diffirence ItemsHouse
  scoreboard players add math_in2 em 1
  scoreboard players set math_in1 em 1
  function em:math/randomp
  # Adjust Scores With Output
  scoreboard players operation kitchenWater ItemsHouse = math_out em
  scoreboard players operation waterLeft ItemsHouse -= kitchenWater ItemsHouse

  # Bathroom Water (1 to 2, n+1)
  scoreboard players set math_in1 em 1
  scoreboard players set math_in2 em 3
  function em:math/randomp
  # Adjust Scores With Output
  scoreboard players operation bathroomWater ItemsHouse = math_out em
  scoreboard players operation waterLeft ItemsHouse -= bathroomWater ItemsHouse

  # Side Bathroom Water (1 to 2, n+1)
  scoreboard players set math_in1 em 1
  scoreboard players set math_in2 em 3
  function em:math/randomp
  # Adjust Scores With Output
  scoreboard players operation sideBathroomWater ItemsHouse = math_out em
  scoreboard players operation waterLeft ItemsHouse -= sideBathroomWater ItemsHouse

  # Hallway Soup (0 to x, n+1)
  # Reduce soupLeft If Hallway Is Smaller
  execute if score hallway ItemsHouse < soupLeft ItemsHouse run scoreboard players operation soupLeft ItemsHouse = hallway ItemsHouse
  scoreboard players operation math_in2 em = soupLeft ItemsHouse
  scoreboard players add math_in2 em 1
  scoreboard players set math_in1 em 0
  function em:math/randomp
  # Adjust Scores With Output
  scoreboard players operation hallwaySoup ItemsHouse = math_out em

  # Hallway Water (0 to x, n+1)
    # Reduce waterLeft If Hallway Is Smaller
    scoreboard players operation diffirence ItemsHouse = hallway ItemsHouse
    scoreboard players operation diffirence ItemsHouse -= hallwaySoup ItemsHouse
    # Reduce Diffirence If waterLeft Is Smaller
    execute if score diffirence ItemsHouse > waterLeft ItemsHouse run scoreboard players operation diffirence ItemsHouse = waterLeft ItemsHouse
    scoreboard players operation math_in2 em = diffirence ItemsHouse
    scoreboard players add math_in2 em 1
    scoreboard players set math_in1 em 0
    function em:math/randomp
    # Adjust Scores With Output
    scoreboard players operation hallwayWater ItemsHouse = math_out em

  # Count Allocated Soup
  scoreboard players set soupLeft ItemsHouse 0
  scoreboard players operation soupLeft ItemsHouse += kitchenSoup ItemsHouse
  scoreboard players operation soupLeft ItemsHouse += hallwaySoup ItemsHouse

  # Count Allocated Water
  scoreboard players set waterLeft ItemsHouse 0
  scoreboard players operation waterLeft ItemsHouse += kitchenWater ItemsHouse
  scoreboard players operation waterLeft ItemsHouse += bathroomWater ItemsHouse
  scoreboard players operation waterLeft ItemsHouse += sideBathroomWater ItemsHouse
  scoreboard players operation waterLeft ItemsHouse += hallwayWater ItemsHouse

# Call Root
function mc:states/stages/5_setup_house/place/items/refresh_scores
schedule function mc:states/stages/5_setup_house/place/items/manage_items 1t