# Multi Soup And Water
execute if score selection MenuMain matches 11 if score isMutant MaryStatus matches 0 run function cm:pages/page_1/actions/action_characters_mary_normal
execute if score selection MenuMain matches 11 if score isMutant MaryStatus matches 1 run function cm:pages/page_1/actions/action_characters_mary_mutant
# Soup
execute if score selection MenuMain matches 13 run scoreboard players set maryGiveSoup MenuFeed 1
execute if score selection MenuMain matches 14 run scoreboard players set maryGiveSoup MenuFeed 0
# Water
execute if score selection MenuMain matches 17 run scoreboard players set maryGiveWater MenuFeed 1
execute if score selection MenuMain matches 18 run scoreboard players set maryGiveWater MenuFeed 0
# Medkit
execute if score selection MenuMain matches 19 run scoreboard players set giveMedkit MenuFeed 2
execute if score selection MenuMain matches 20 run scoreboard players set giveMedkit MenuFeed 0