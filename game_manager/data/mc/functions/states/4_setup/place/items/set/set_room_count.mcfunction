# Notes
  # Sum of max random room items (except hallway bonous) equals total house items.
  # After dedicating loot to each room the hallway has a second chance to get leftover items.
  # soupLeft and waterLeft allocate leftover food to the hallway and break recursive tag functions.
  # Never set hallway size to 0 when debugging because it is intended to receive leftover items.

# Count Total Items
execute store result score itemCount ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=scavengeItem]
execute store result score soupLeft ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=soup]
execute store result score waterLeft ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=water]

# Set Base Item Count
execute store result score bathroom ItemsHouse run random value 2..3
execute store result score hallway ItemsHouse run random value 1..2
execute store result score kidsBedroom ItemsHouse run random value 3..5
execute store result score kitchen ItemsHouse run random value 5..7
execute store result score lounge ItemsHouse run random value 3..5
execute store result score masterBedroom ItemsHouse run random value 3..5
execute store result score sideBathroom ItemsHouse run random value 1..2

# Set Remaining Items
  # Sum Allocations
  scoreboard players operation remainder ItemsHouse = itemCount ItemsHouse
  scoreboard players operation remainder ItemsHouse -= bathroom ItemsHouse
  scoreboard players operation remainder ItemsHouse -= hallway ItemsHouse
  scoreboard players operation remainder ItemsHouse -= kidsBedroom ItemsHouse
  scoreboard players operation remainder ItemsHouse -= kitchen ItemsHouse
  scoreboard players operation remainder ItemsHouse -= lounge ItemsHouse
  scoreboard players operation remainder ItemsHouse -= masterBedroom ItemsHouse
  scoreboard players operation remainder ItemsHouse -= sideBathroom ItemsHouse

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
execute if score remainder ItemsHouse matches 1.. run function mc:states/4_setup/place/items/set/set_room_count_fix_leftovers

# Assign Items For Specific Rooms
  # Kitchen Soup
  execute store result score kitchenSoup ItemsHouse run random value 3..5
  scoreboard players operation soupLeft ItemsHouse -= kitchenSoup ItemsHouse

  # Kitchen Water
  # Reduce math_in2 If Kitchen Is Smaller
  scoreboard players operation remainder ItemsHouse = kitchen ItemsHouse
  scoreboard players operation remainder ItemsHouse -= kitchenSoup ItemsHouse
  data modify storage minecraft:math x set value 1
  execute store result storage minecraft:math y int 1 run scoreboard players get remainder ItemsHouse
  function mc:utility/math/get_random_range with storage minecraft:math
  # Adjust Scores
  scoreboard players operation kitchenWater ItemsHouse = out Math
  scoreboard players operation waterLeft ItemsHouse -= kitchenWater ItemsHouse

  # Bathroom Water
  execute store result score bathroomWater ItemsHouse run random value 1..2
  scoreboard players operation waterLeft ItemsHouse -= bathroomWater ItemsHouse

  # Side Bathroom Water
  execute store result score sideBathroomWater ItemsHouse run random value 1..2
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
    scoreboard players operation remainder ItemsHouse = hallway ItemsHouse
    scoreboard players operation remainder ItemsHouse -= hallwaySoup ItemsHouse
    # Reduce Diffirence If waterLeft Is Smaller
    execute if score remainder ItemsHouse > waterLeft ItemsHouse run scoreboard players operation remainder ItemsHouse = waterLeft ItemsHouse
    data modify storage minecraft:math x set value 0
    execute store result storage minecraft:math y int 1 run scoreboard players get remainder ItemsHouse
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
function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t