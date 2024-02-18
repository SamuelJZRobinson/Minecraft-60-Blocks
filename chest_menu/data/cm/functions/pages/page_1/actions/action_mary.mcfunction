# Soup
execute if score selection ChestMenuMain matches 13 run scoreboard players set maryGiveCan ChestMenuFeed 1
execute if score selection ChestMenuMain matches 14 run scoreboard players set maryGiveCan ChestMenuFeed 0
# Water
execute if score selection ChestMenuMain matches 17 run scoreboard players set maryGiveBottle ChestMenuFeed 1
execute if score selection ChestMenuMain matches 18 run scoreboard players set maryGiveBottle ChestMenuFeed 0
# Medkit
execute if score selection ChestMenuMain matches 19 run scoreboard players set giveMedkit ChestMenuFeed 2
execute if score selection ChestMenuMain matches 20 run scoreboard players set giveMedkit ChestMenuFeed 0

# Head Selection
execute if score selection ChestMenuMain matches 11 run function cm:pages/page_1/actions/action_mary_head