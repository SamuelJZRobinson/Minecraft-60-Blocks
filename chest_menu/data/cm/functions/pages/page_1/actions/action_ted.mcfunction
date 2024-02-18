# Soup
execute if score selection ChestMenuMain matches 23 run scoreboard players set tedGiveCan ChestMenuFeed 1
execute if score selection ChestMenuMain matches 24 run scoreboard players set tedGiveCan ChestMenuFeed 0
# Water
execute if score selection ChestMenuMain matches 25 run scoreboard players set tedGiveBottle ChestMenuFeed 1
execute if score selection ChestMenuMain matches 26 run scoreboard players set tedGiveBottle ChestMenuFeed 0
# Medkit
execute if score selection ChestMenuMain matches 27 run scoreboard players set giveMedkit ChestMenuFeed 3
execute if score selection ChestMenuMain matches 28 run scoreboard players set giveMedkit ChestMenuFeed 0

# Head Selection
execute if score selection ChestMenuMain matches 21 run function cm:pages/page_1/actions/action_ted_head