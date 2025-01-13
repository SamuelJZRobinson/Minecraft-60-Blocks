# Get Total Water
execute store result score waterLeft ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=water]

# Kitchen
# Reduce math_in2 If Kitchen Is Smaller
scoreboard players operation remainder ItemsHouse = kitchenItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= kitchenSoupItemsLeft ItemsHouse
data modify storage minecraft:math x set value 1
execute store result storage minecraft:math y int 1 run scoreboard players get remainder ItemsHouse
function mc:utility/math/get_random_range with storage minecraft:math
# Adjust Scores
scoreboard players operation kitchenWaterItemsLeft ItemsHouse = out Math
scoreboard players operation waterLeft ItemsHouse -= kitchenWaterItemsLeft ItemsHouse

# Bathroom
execute store result score bathroomWaterItemsLeft ItemsHouse run random value 1..2
scoreboard players operation waterLeft ItemsHouse -= bathroomWaterItemsLeft ItemsHouse

# Side Bathroom
execute store result score sideBathroomWaterItemsLeft ItemsHouse run random value 1..2
scoreboard players operation waterLeft ItemsHouse -= sideBathroomWaterItemsLeft ItemsHouse

# Hallway
  # Reduce waterLeft If Hallway Is Smaller
  scoreboard players operation remainder ItemsHouse = hallwayItemsLeft ItemsHouse
  scoreboard players operation remainder ItemsHouse -= hallwaySoupItemsLeft ItemsHouse
  # Reduce Diffirence If waterLeft Is Smaller
  execute if score remainder ItemsHouse > waterLeft ItemsHouse run scoreboard players operation remainder ItemsHouse = waterLeft ItemsHouse
  data modify storage minecraft:math x set value 0
  execute store result storage minecraft:math y int 1 run scoreboard players get remainder ItemsHouse
  function mc:utility/math/get_random_range with storage minecraft:math
  # Adjust Scores
  scoreboard players operation hallwayWaterItemsLeft ItemsHouse = out Math

# Count Allocated Water
scoreboard players set waterLeft ItemsHouse 0
scoreboard players operation waterLeft ItemsHouse += kitchenWaterItemsLeft ItemsHouse
scoreboard players operation waterLeft ItemsHouse += bathroomWaterItemsLeft ItemsHouse
scoreboard players operation waterLeft ItemsHouse += sideBathroomWaterItemsLeft ItemsHouse
scoreboard players operation waterLeft ItemsHouse += hallwayWaterItemsLeft ItemsHouse