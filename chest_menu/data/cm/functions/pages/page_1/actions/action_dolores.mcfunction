# Multi Soup And Water
  # Enable
    # Soup off, water off
    execute if score selection MenuMain matches 4 if score doloresMultiAction MenuFeed matches 1 run scoreboard players set doloresGiveSoup MenuFeed 1
    execute if score selection MenuMain matches 4 if score doloresMultiAction MenuFeed matches 1 run scoreboard players set doloresGiveWater MenuFeed 1
    # Soup off, water on
    execute if score selection MenuMain matches 4 if score doloresMultiAction MenuFeed matches 2 run scoreboard players set doloresGiveSoup MenuFeed 1
    # Soup on, water off
    execute if score selection MenuMain matches 4 if score doloresMultiAction MenuFeed matches 3 run scoreboard players set doloresGiveWater MenuFeed 1
  # Disable
    # Soup on, water on
    execute if score selection MenuMain matches 4 if score doloresMultiAction MenuFeed matches 4 run scoreboard players set doloresGiveSoup MenuFeed 0
    execute if score selection MenuMain matches 4 if score doloresMultiAction MenuFeed matches 4 run scoreboard players set doloresGiveWater MenuFeed 0
# Soup
execute if score selection MenuMain matches 5 run scoreboard players set doloresGiveSoup MenuFeed 1
execute if score selection MenuMain matches 6 run scoreboard players set doloresGiveSoup MenuFeed 0
# Water
execute if score selection MenuMain matches 7 run scoreboard players set doloresGiveWater MenuFeed 1
execute if score selection MenuMain matches 8 run scoreboard players set doloresGiveWater MenuFeed 0
# Medkit
execute if score selection MenuMain matches 9 run scoreboard players set giveMedkit MenuFeed 1
execute if score selection MenuMain matches 10 run scoreboard players set giveMedkit MenuFeed 0