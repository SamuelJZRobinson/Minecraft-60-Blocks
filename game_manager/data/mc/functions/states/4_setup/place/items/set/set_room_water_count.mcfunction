# Get Total Water
execute store result score waterLeft ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=water]

# Kitchen
# Reduce math_in2 If Kitchen Is Smaller
scoreboard players operation remainder ItemsHouse = kitchenItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= kitchenSoup ItemsHouse
data modify storage minecraft:math x set value 1
execute store result storage minecraft:math y int 1 run scoreboard players get remainder ItemsHouse
function mc:utility/math/get_random_range with storage minecraft:math
# Adjust Scores
scoreboard players operation kitchenWater ItemsHouse = out Math
scoreboard players operation waterLeft ItemsHouse -= kitchenWater ItemsHouse

# Bathroom
execute store result score bathroomWater ItemsHouse run random value 1..2
scoreboard players operation waterLeft ItemsHouse -= bathroomWater ItemsHouse

# Side Bathroom
execute store result score sideBathroomWater ItemsHouse run random value 1..2
scoreboard players operation waterLeft ItemsHouse -= sideBathroomWater ItemsHouse

# Hallway
  # Reduce waterLeft If Hallway Is Smaller
  scoreboard players operation remainder ItemsHouse = hallwayItemsLeft ItemsHouse
  scoreboard players operation remainder ItemsHouse -= hallwaySoup ItemsHouse
  # Reduce Diffirence If waterLeft Is Smaller
  execute if score remainder ItemsHouse > waterLeft ItemsHouse run scoreboard players operation remainder ItemsHouse = waterLeft ItemsHouse
  data modify storage minecraft:math x set value 0
  execute store result storage minecraft:math y int 1 run scoreboard players get remainder ItemsHouse
  function mc:utility/math/get_random_range with storage minecraft:math
  # Adjust Scores
  scoreboard players operation hallwayWater ItemsHouse = out Math

# Count Allocated Water
scoreboard players set waterLeft ItemsHouse 0
scoreboard players operation waterLeft ItemsHouse += kitchenWater ItemsHouse
scoreboard players operation waterLeft ItemsHouse += bathroomWater ItemsHouse
scoreboard players operation waterLeft ItemsHouse += sideBathroomWater ItemsHouse
scoreboard players operation waterLeft ItemsHouse += hallwayWater ItemsHouse