# Get Total Water
execute store result score waterLeft ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=water]

# Kitchen
scoreboard players operation remainder ItemsHouse = kitchenItemsLeft ItemsHouse
scoreboard players operation remainder ItemsHouse -= kitchenSoupItemsLeft ItemsHouse
execute store result score kitchenWaterItemsLeft ItemsHouse run function mc:utility/math/get_random_value_amt_obj {"x":1,"score":remainder,"objective":ItemsHouse}
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
  execute store result score hallwayWaterItemsLeft ItemsHouse run function mc:utility/math/get_random_value_amt_obj {"x":0,"score":remainder,"objective":ItemsHouse}

# Count Allocated Water
scoreboard players set waterLeft ItemsHouse 0
scoreboard players operation waterLeft ItemsHouse += kitchenWaterItemsLeft ItemsHouse
scoreboard players operation waterLeft ItemsHouse += bathroomWaterItemsLeft ItemsHouse
scoreboard players operation waterLeft ItemsHouse += sideBathroomWaterItemsLeft ItemsHouse
scoreboard players operation waterLeft ItemsHouse += hallwayWaterItemsLeft ItemsHouse