# Spread Entities
execute if score mapVisited MenuExpedition matches 1 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_neighbourhood_ruins
execute if score mapVisited MenuExpedition matches 2 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_retail_strip_1
execute if score mapVisited MenuExpedition matches 3 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_retail_strip_2
execute if score mapVisited MenuExpedition matches 4 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_high_school
execute if score mapVisited MenuExpedition matches 5 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_bowling_alley
execute if score mapVisited MenuExpedition matches 6 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_hospital
execute if score mapVisited MenuExpedition matches 7 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_metro
execute if score mapVisited MenuExpedition matches 8 as @e[team=Items] run function gc:states/9_expedition/place/mobs/spread/spread_warehouse

# Proceed
schedule function gc:states/9_expedition/place/inc_step 1t replace