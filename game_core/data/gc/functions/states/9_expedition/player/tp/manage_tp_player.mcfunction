# Effect
effect give @p[team=Player] invisibility 4 0 true

# Teleport To Locations
execute if score mapVisited MenuExpedition matches 1 run function gc:states/9_expedition/player/tp/tp_house_ruins
execute if score mapVisited MenuExpedition matches 2 run function gc:states/9_expedition/player/tp/tp_retail_strip_1
execute if score mapVisited MenuExpedition matches 3 run function gc:states/9_expedition/player/tp/tp_retail_strip_2
execute if score mapVisited MenuExpedition matches 4 run function gc:states/9_expedition/player/tp/tp_high_school
execute if score mapVisited MenuExpedition matches 5 run function gc:states/9_expedition/player/tp/tp_metro
execute if score mapVisited MenuExpedition matches 6 run function gc:states/9_expedition/player/tp/tp_hospital
execute if score mapVisited MenuExpedition matches 7 run function gc:states/9_expedition/player/tp/tp_bowling_alley
execute if score mapVisited MenuExpedition matches 8 run function gc:states/9_expedition/player/tp/tp_warehouse

# Proceed
schedule function gc:states/9_expedition/inc_step 1t replace