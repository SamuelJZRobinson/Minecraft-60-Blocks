# Get Total Soup
execute store result score soupLeft ItemsHouse if entity @e[type=minecraft:slime,team=Items,tag=soup]

# Kitchen
execute store result score kitchenSoup ItemsHouse run random value 3..5
scoreboard players operation soupLeft ItemsHouse -= kitchenSoup ItemsHouse

# Hallway
# Reduce soupLeft If Hallway Is Smaller
execute if score hallway ItemsHouse < soupLeft ItemsHouse run scoreboard players operation soupLeft ItemsHouse = hallway ItemsHouse
data modify storage minecraft:math x set value 0
execute store result storage minecraft:math y int 1 run scoreboard players get soupLeft ItemsHouse
function mc:utility/math/get_random_range with storage minecraft:math
# Adjust Scores
scoreboard players operation hallwaySoup ItemsHouse = out Math

# Count Allocated Soup
scoreboard players set soupLeft ItemsHouse 0
scoreboard players operation soupLeft ItemsHouse += kitchenSoup ItemsHouse
scoreboard players operation soupLeft ItemsHouse += hallwaySoup ItemsHouse