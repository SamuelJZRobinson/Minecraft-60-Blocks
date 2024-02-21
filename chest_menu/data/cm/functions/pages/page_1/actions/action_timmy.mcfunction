# Soup
execute if score selection MenuMain matches 31 run scoreboard players set timmyGiveCan MenuFeed 1
execute if score selection MenuMain matches 32 run scoreboard players set timmyGiveCan MenuFeed 0
# Water
execute if score selection MenuMain matches 33 run scoreboard players set timmyGiveBottle MenuFeed 1
execute if score selection MenuMain matches 34 run scoreboard players set timmyGiveBottle MenuFeed 0
# Medkit
execute if score selection MenuMain matches 35 run scoreboard players set giveMedkit MenuFeed 4
execute if score selection MenuMain matches 36 run scoreboard players set giveMedkit MenuFeed 0

# Head Selection
execute if score selection MenuMain matches 29 run function cm:pages/page_1/actions/action_timmy_head