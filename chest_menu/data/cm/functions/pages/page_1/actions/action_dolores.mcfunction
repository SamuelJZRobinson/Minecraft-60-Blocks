# Soup
execute if score selection MenuMain matches 5 run scoreboard players set doloresGiveCan MenuFeed 1
execute if score selection MenuMain matches 6 run scoreboard players set doloresGiveCan MenuFeed 0
# Water
execute if score selection MenuMain matches 7 run scoreboard players set doloresGiveBottle MenuFeed 1
execute if score selection MenuMain matches 8 run scoreboard players set doloresGiveBottle MenuFeed 0
# Medkit
execute if score selection MenuMain matches 9 run scoreboard players set giveMedkit MenuFeed 1
execute if score selection MenuMain matches 10 run scoreboard players set giveMedkit MenuFeed 0

# Head Selection
execute if score selection MenuMain matches 4 run function cm:pages/page_1/actions/action_dolores_head