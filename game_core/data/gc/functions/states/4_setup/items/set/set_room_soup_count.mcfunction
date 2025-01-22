# Get Total Soup
execute store result score soupLeft ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=soup]

# Kitchen
execute store result score kitchenSoupItemsLeft ItemsHouse run random value 3..5
scoreboard players operation soupLeft ItemsHouse -= kitchenSoupItemsLeft ItemsHouse

# Hallway
# Keep In Range
execute if score hallwayItemsLeft ItemsHouse < soupLeft ItemsHouse run scoreboard players operation soupLeft ItemsHouse = hallwayItemsLeft ItemsHouse
# Roll
execute store result score hallwaySoupItemsLeft ItemsHouse run function gc:utility/math/get_random_value_via_amount_score {"x":0,"score":soupLeft,"objective":ItemsHouse}

# Count Allocated Soup
scoreboard players set soupLeft ItemsHouse 0
scoreboard players operation soupLeft ItemsHouse += kitchenSoupItemsLeft ItemsHouse
scoreboard players operation soupLeft ItemsHouse += hallwaySoupItemsLeft ItemsHouse