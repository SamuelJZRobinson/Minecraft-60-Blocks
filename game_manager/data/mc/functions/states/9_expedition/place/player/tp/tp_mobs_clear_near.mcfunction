# Spread Enemies
execute if score mapVisited MenuExpedition matches 1 run function mc:states/9_expedition/place/mobs/tp/spread_neighbourhood_ruins
execute if score mapVisited MenuExpedition matches 2 run function mc:states/9_expedition/place/mobs/tp/spread_retail_strip_1
execute if score mapVisited MenuExpedition matches 3 run function mc:states/9_expedition/place/mobs/tp/spread_retail_strip_2
execute if score mapVisited MenuExpedition matches 4 run function mc:states/9_expedition/place/mobs/tp/spread_high_school
execute if score mapVisited MenuExpedition matches 5 run function mc:states/9_expedition/place/mobs/tp/spread_bowling_alley
execute if score mapVisited MenuExpedition matches 6 run function mc:states/9_expedition/place/mobs/tp/spread_hospital
execute if score mapVisited MenuExpedition matches 7 run function mc:states/9_expedition/place/mobs/tp/spread_metro
execute if score mapVisited MenuExpedition matches 8 run function mc:states/9_expedition/place/mobs/tp/spread_warehouse

# Loop
execute as @e[team=Mobs] at @s if entity @p[team=Player,distance=..16] run function mc:states/9_expedition/place/mobs/tp/tp_mobs_clear_near