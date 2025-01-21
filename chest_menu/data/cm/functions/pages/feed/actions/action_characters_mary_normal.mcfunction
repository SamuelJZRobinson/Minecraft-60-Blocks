# Multi Soup And Water
  # Enable
    # Soup off, water off
    execute if score maryMultiAction MenuFeed matches 1 run scoreboard players set maryGiveSoup MenuFeed 1
    execute if score maryMultiAction MenuFeed matches 1 run scoreboard players set maryGiveWater MenuFeed 1
    # Soup off, water on
    execute if score maryMultiAction MenuFeed matches 2 run scoreboard players set maryGiveSoup MenuFeed 1
    # Soup on, water off
    execute if score maryMultiAction MenuFeed matches 3 run scoreboard players set maryGiveWater MenuFeed 1
  # Disable
    # Soup on, water on
    execute if score maryMultiAction MenuFeed matches 4 run scoreboard players set maryGiveSoup MenuFeed 0
    execute if score maryMultiAction MenuFeed matches 4 run scoreboard players set maryGiveWater MenuFeed 0