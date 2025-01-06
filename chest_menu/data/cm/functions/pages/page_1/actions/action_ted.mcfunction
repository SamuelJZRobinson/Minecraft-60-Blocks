# Soup
execute if score selection MenuMain matches 23 run scoreboard players set tedGiveSoup MenuFeed 1
execute if score selection MenuMain matches 24 run scoreboard players set tedGiveSoup MenuFeed 0
# Water
execute if score selection MenuMain matches 25 run scoreboard players set tedGiveWater MenuFeed 1
execute if score selection MenuMain matches 26 run scoreboard players set tedGiveWater MenuFeed 0
# Medkit
execute if score selection MenuMain matches 27 run scoreboard players set giveMedkit MenuFeed 3
execute if score selection MenuMain matches 28 run scoreboard players set giveMedkit MenuFeed 0

# Head Selection
execute if score selection MenuMain matches 21 run function cm:pages/page_1/actions/action_ted_head