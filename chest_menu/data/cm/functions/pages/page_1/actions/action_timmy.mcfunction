# Soup
execute if score selection ChestMenuMain matches 31 run scoreboard players set timmyGiveCan ChestMenuFeed 1
execute if score selection ChestMenuMain matches 32 run scoreboard players set timmyGiveCan ChestMenuFeed 0
# Water
execute if score selection ChestMenuMain matches 33 run scoreboard players set timmyGiveBottle ChestMenuFeed 1
execute if score selection ChestMenuMain matches 34 run scoreboard players set timmyGiveBottle ChestMenuFeed 0
# Medkit
execute if score selection ChestMenuMain matches 35 run scoreboard players set giveMedkit ChestMenuFeed 4
execute if score selection ChestMenuMain matches 36 run scoreboard players set giveMedkit ChestMenuFeed 0

# Head Selection
execute if score selection ChestMenuMain matches 29 run function cm:pages/page_1/actions/action_timmy_head