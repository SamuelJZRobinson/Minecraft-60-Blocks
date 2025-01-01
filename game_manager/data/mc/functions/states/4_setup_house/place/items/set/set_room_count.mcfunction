# Notes
  # Sum of max random room items (except hallway bonous) equals total house items.
  # After dedicating loot to each room the hallway has a second chance to get leftover items.
  # soupLeft and waterLeft allocate leftover food to the hallway and break recursive tag functions.
  # Never set hallway size to 0 when debugging because it is intended to receive leftover items.

# Count Total Items
execute store result score itemCount ItemsHouse if entity @e[type=minecraft:slime,tag=scavengeItem]
execute store result score soupLeft ItemsHouse if entity @e[type=minecraft:slime,tag=scavengeSoup]
execute store result score waterLeft ItemsHouse if entity @e[type=minecraft:slime,tag=scavengeWater]

# Set Base Item Count
  # Bathroom
  function mc:utility/math/get_random_range {x:2,y:3}
  scoreboard players operation bathroom ItemsHouse = out Math
  # Hallway
  function mc:utility/math/get_random_range {x:0,y:2}
  scoreboard players operation hallway ItemsHouse = out Math
  # Kids Room
  function mc:utility/math/get_random_range {x:3,y:5}
  scoreboard players operation kidsBedroom ItemsHouse = out Math
  # Kitchen
  function mc:utility/math/get_random_range {x:6,y:8}
  scoreboard players operation kitchen ItemsHouse = out Math
  # Lounge
  function mc:utility/math/get_random_range {x:3,y:5}
  scoreboard players operation lounge ItemsHouse = out Math
  # Master Bedroom
  function mc:utility/math/get_random_range {x:3,y:5}
  scoreboard players operation masterBedroom ItemsHouse = out Math
  # Side Bathroom
  function mc:utility/math/get_random_range {x:2,y:3}
  scoreboard players operation sideBathroom ItemsHouse = out Math

# Set Remaining Items
  # Sum Allocations
  scoreboard players set allocated ItemsHouse 0
  scoreboard players operation allocated ItemsHouse += bathroom ItemsHouse
  scoreboard players operation allocated ItemsHouse += hallway ItemsHouse
  scoreboard players operation allocated ItemsHouse += kidsBedroom ItemsHouse
  scoreboard players operation allocated ItemsHouse += kitchen ItemsHouse
  scoreboard players operation allocated ItemsHouse += lounge ItemsHouse
  scoreboard players operation allocated ItemsHouse += masterBedroom ItemsHouse
  scoreboard players operation allocated ItemsHouse += sideBathroom ItemsHouse
  # Calculate Remainder
  scoreboard players operation remainder ItemsHouse = itemCount ItemsHouse
  scoreboard players operation remainder ItemsHouse -= allocated ItemsHouse

# Set Hallway Bonous Item Count
  # Set Bonous Count
  data modify storage minecraft:math x set value 0
  execute if score remainder ItemsHouse matches ..0 run data modify storage minecraft:math y set value 0
  execute if score remainder ItemsHouse matches 1 run data modify storage minecraft:math y set value 1
  execute if score remainder ItemsHouse matches 2 run data modify storage minecraft:math y set value 2
  execute if score remainder ItemsHouse matches 3.. run data modify storage minecraft:math y set value 3
  function mc:utility/math/get_random_range with storage minecraft:math
  # Adjust Scores
  scoreboard players operation hallway ItemsHouse += out Math
  scoreboard players operation allocated ItemsHouse += out Math
  scoreboard players operation remainder ItemsHouse -= out Math

# Compensate Remaining Items
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup_house/place/items/set/set_room_count_fix_leftovers

# Assign Items For Specific Rooms
  # Kitchen Soup
  function mc:utility/math/get_random_range {x:3,y:5}
  # Adjust Scores
  scoreboard players operation kitchenSoup ItemsHouse = out Math
  scoreboard players operation soupLeft ItemsHouse -= kitchenSoup ItemsHouse

  # Kitchen Water
  # Reduce math_in2 If Kitchen Is Smaller
  scoreboard players operation diffirence ItemsHouse = kitchen ItemsHouse
  scoreboard players operation diffirence ItemsHouse -= kitchenSoup ItemsHouse
  data modify storage minecraft:math x set value 1
  execute store result storage minecraft:math y int 1 run scoreboard players get diffirence ItemsHouse
  function mc:utility/math/get_random_range with storage minecraft:math
  # Adjust Scores
  scoreboard players operation kitchenWater ItemsHouse = out Math
  scoreboard players operation waterLeft ItemsHouse -= kitchenWater ItemsHouse

  # Bathroom Water
  function mc:utility/math/get_random_range {x:1,y:2}
  # Adjust Scores
  scoreboard players operation bathroomWater ItemsHouse = out Math
  scoreboard players operation waterLeft ItemsHouse -= bathroomWater ItemsHouse

  # Side Bathroom Water
  function mc:utility/math/get_random_range {x:1,y:2}
  # Adjust Scores
  scoreboard players operation sideBathroomWater ItemsHouse = out Math
  scoreboard players operation waterLeft ItemsHouse -= sideBathroomWater ItemsHouse

  # Hallway Soup
  # Reduce soupLeft If Hallway Is Smaller
  execute if score hallway ItemsHouse < soupLeft ItemsHouse run scoreboard players operation soupLeft ItemsHouse = hallway ItemsHouse
  data modify storage minecraft:math x set value 0
  execute store result storage minecraft:math y int 1 run scoreboard players get soupLeft ItemsHouse
  function mc:utility/math/get_random_range with storage minecraft:math
  # Adjust Scores
  scoreboard players operation hallwaySoup ItemsHouse = out Math

  # Hallway Water
    # Reduce waterLeft If Hallway Is Smaller
    scoreboard players operation diffirence ItemsHouse = hallway ItemsHouse
    scoreboard players operation diffirence ItemsHouse -= hallwaySoup ItemsHouse
    # Reduce Diffirence If waterLeft Is Smaller
    execute if score diffirence ItemsHouse > waterLeft ItemsHouse run scoreboard players operation diffirence ItemsHouse = waterLeft ItemsHouse
    data modify storage minecraft:math x set value 0
    execute store result storage minecraft:math y int 1 run scoreboard players get diffirence ItemsHouse
    function mc:utility/math/get_random_range with storage minecraft:math
    # Adjust Scores
    scoreboard players operation hallwayWater ItemsHouse = out Math

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
function mc:states/4_setup_house/place/items/refresh_scores
schedule function mc:states/4_setup_house/place/items/manage_items 1t