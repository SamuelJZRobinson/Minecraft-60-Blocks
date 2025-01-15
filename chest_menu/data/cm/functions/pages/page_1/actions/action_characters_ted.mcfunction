# Multi Soup And Water
  # Enable
    # Soup off, water off
    execute if score selection MenuMain matches 21 if score tedMultiAction MenuFeed matches 1 run scoreboard players set tedGiveSoup MenuFeed 1
    execute if score selection MenuMain matches 21 if score tedMultiAction MenuFeed matches 1 run scoreboard players set tedGiveWater MenuFeed 1
    # Soup off, water on
    execute if score selection MenuMain matches 21 if score tedMultiAction MenuFeed matches 2 run scoreboard players set tedGiveSoup MenuFeed 1
    # Soup on, water off
    execute if score selection MenuMain matches 21 if score tedMultiAction MenuFeed matches 3 run scoreboard players set tedGiveWater MenuFeed 1
  # Disable
    # Soup on, water on
    execute if score selection MenuMain matches 21 if score tedMultiAction MenuFeed matches 4 run scoreboard players set tedGiveSoup MenuFeed 0
    execute if score selection MenuMain matches 21 if score tedMultiAction MenuFeed matches 4 run scoreboard players set tedGiveWater MenuFeed 0
# Soup
execute if score selection MenuMain matches 23 run scoreboard players set tedGiveSoup MenuFeed 1
execute if score selection MenuMain matches 24 run scoreboard players set tedGiveSoup MenuFeed 0
# Water
execute if score selection MenuMain matches 25 run scoreboard players set tedGiveWater MenuFeed 1
execute if score selection MenuMain matches 26 run scoreboard players set tedGiveWater MenuFeed 0
# Medkit
execute if score selection MenuMain matches 27 run scoreboard players set giveMedkit MenuFeed 3
execute if score selection MenuMain matches 28 run scoreboard players set giveMedkit MenuFeed 0