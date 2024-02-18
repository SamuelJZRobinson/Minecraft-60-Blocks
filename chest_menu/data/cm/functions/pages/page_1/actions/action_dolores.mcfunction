# Soup
execute if score selection ChestMenuMain matches 5 run scoreboard players set doloresGiveCan ChestMenuFeed 1
execute if score selection ChestMenuMain matches 6 run scoreboard players set doloresGiveCan ChestMenuFeed 0
# Water
execute if score selection ChestMenuMain matches 7 run scoreboard players set doloresGiveBottle ChestMenuFeed 1
execute if score selection ChestMenuMain matches 8 run scoreboard players set doloresGiveBottle ChestMenuFeed 0
# Medkit
execute if score selection ChestMenuMain matches 9 run scoreboard players set giveMedkit ChestMenuFeed 1
execute if score selection ChestMenuMain matches 10 run scoreboard players set giveMedkit ChestMenuFeed 0

# Head Selection
execute if score selection ChestMenuMain matches 4 run function cm:pages/page_1/actions/action_dolores_head