# Soup
execute if score selection MenuMain matches 13 run scoreboard players set maryGiveCan MenuFeed 1
execute if score selection MenuMain matches 14 run scoreboard players set maryGiveCan MenuFeed 0
# Water
execute if score selection MenuMain matches 17 run scoreboard players set maryGiveBottle MenuFeed 1
execute if score selection MenuMain matches 18 run scoreboard players set maryGiveBottle MenuFeed 0
# Medkit
execute if score selection MenuMain matches 19 run scoreboard players set giveMedkit MenuFeed 2
execute if score selection MenuMain matches 20 run scoreboard players set giveMedkit MenuFeed 0

# Head Selection
execute if score selection MenuMain matches 11 run function cm:pages/page_1/actions/action_mary_head