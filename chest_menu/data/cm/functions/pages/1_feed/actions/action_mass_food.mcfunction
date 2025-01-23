# Soup
execute if score selection MenuMain matches 37 if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 1 run scoreboard players set tedGiveSoup MenuFeed 1
execute if score selection MenuMain matches 37 if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 2 run scoreboard players set doloresGiveSoup MenuFeed 1
execute if score selection MenuMain matches 37 if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 run scoreboard players set maryGiveSoup MenuFeed 1
execute if score selection MenuMain matches 37 if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 4 run scoreboard players set timmyGiveSoup MenuFeed 1
execute if score selection MenuMain matches 38 run scoreboard players set doloresGiveSoup MenuFeed 0
execute if score selection MenuMain matches 38 run scoreboard players set maryGiveSoup MenuFeed 0
execute if score selection MenuMain matches 38 run scoreboard players set tedGiveSoup MenuFeed 0
execute if score selection MenuMain matches 38 run scoreboard players set timmyGiveSoup MenuFeed 0
# Water
execute if score selection MenuMain matches 39 if score alive TedStatus matches 1 unless score characterSent MenuExpedition matches 1 run scoreboard players set tedGiveWater MenuFeed 1
execute if score selection MenuMain matches 39 if score alive DoloresStatus matches 1 unless score characterSent MenuExpedition matches 2 run scoreboard players set doloresGiveWater MenuFeed 1
execute if score selection MenuMain matches 39 if score alive MaryStatus matches 1 unless score characterSent MenuExpedition matches 3 unless score isMutant MaryStatus matches 1 run scoreboard players set maryGiveWater MenuFeed 1
execute if score selection MenuMain matches 39 if score alive TimmyStatus matches 1 unless score characterSent MenuExpedition matches 4 run scoreboard players set timmyGiveWater MenuFeed 1
execute if score selection MenuMain matches 40 run scoreboard players set doloresGiveWater MenuFeed 0
execute if score selection MenuMain matches 40 run scoreboard players set maryGiveWater MenuFeed 0
execute if score selection MenuMain matches 40 run scoreboard players set tedGiveWater MenuFeed 0
execute if score selection MenuMain matches 40 run scoreboard players set timmyGiveWater MenuFeed 0