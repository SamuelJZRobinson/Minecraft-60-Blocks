# Spread Enemies
execute if score mapVisited MenuExpedition matches 1 run function gc:states/9_expedition/place/mobs/spread/spread_neighbourhood_ruins
execute if score mapVisited MenuExpedition matches 2 run function gc:states/9_expedition/place/mobs/spread/spread_retail_strip_1
execute if score mapVisited MenuExpedition matches 3 run function gc:states/9_expedition/place/mobs/spread/spread_retail_strip_2
execute if score mapVisited MenuExpedition matches 4 run function gc:states/9_expedition/place/mobs/spread/spread_high_school
execute if score mapVisited MenuExpedition matches 5 run function gc:states/9_expedition/place/mobs/spread/spread_bowling_alley
execute if score mapVisited MenuExpedition matches 6 run function gc:states/9_expedition/place/mobs/spread/spread_hospital
execute if score mapVisited MenuExpedition matches 7 run function gc:states/9_expedition/place/mobs/spread/spread_metro
execute if score mapVisited MenuExpedition matches 8 run function gc:states/9_expedition/place/mobs/spread/spread_warehouse

# Loop
execute as @e[team=Mobs] at @s if entity @p[team=Player,distance=..16] run function gc:states/9_expedition/place/mobs/spread/spread_mobs_clear_near