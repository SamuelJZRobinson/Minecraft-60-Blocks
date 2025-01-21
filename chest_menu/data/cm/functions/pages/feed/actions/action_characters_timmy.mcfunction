# Multi Soup And Water
  # Enable
    # Soup off, water off
    execute if score selection MenuMain matches 29 if score timmyMultiAction MenuFeed matches 1 run scoreboard players set timmyGiveSoup MenuFeed 1
    execute if score selection MenuMain matches 29 if score timmyMultiAction MenuFeed matches 1 run scoreboard players set timmyGiveWater MenuFeed 1
    # Soup off, water on
    execute if score selection MenuMain matches 29 if score timmyMultiAction MenuFeed matches 2 run scoreboard players set timmyGiveSoup MenuFeed 1
    # Soup on, water off
    execute if score selection MenuMain matches 29 if score timmyMultiAction MenuFeed matches 3 run scoreboard players set timmyGiveWater MenuFeed 1
  # Disable
    # Soup on, water on
    execute if score selection MenuMain matches 29 if score timmyMultiAction MenuFeed matches 4 run scoreboard players set timmyGiveSoup MenuFeed 0
    execute if score selection MenuMain matches 29 if score timmyMultiAction MenuFeed matches 4 run scoreboard players set timmyGiveWater MenuFeed 0
# Soup
execute if score selection MenuMain matches 31 run scoreboard players set timmyGiveSoup MenuFeed 1
execute if score selection MenuMain matches 32 run scoreboard players set timmyGiveSoup MenuFeed 0
# Water
execute if score selection MenuMain matches 33 run scoreboard players set timmyGiveWater MenuFeed 1
execute if score selection MenuMain matches 34 run scoreboard players set timmyGiveWater MenuFeed 0
# Medkit
execute if score selection MenuMain matches 35 run scoreboard players set giveMedkit MenuFeed 4
execute if score selection MenuMain matches 36 run scoreboard players set giveMedkit MenuFeed 0