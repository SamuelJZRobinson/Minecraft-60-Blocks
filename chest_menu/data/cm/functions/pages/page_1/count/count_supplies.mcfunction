# Reset Scores
scoreboard players set soupGiven MenuFeed 0
scoreboard players set waterGiven MenuFeed 0
scoreboard players set medkitGiven MenuFeed 0

# Sum Items Given
  # Soup
  execute if score doloresGiveSoup MenuFeed matches 1 run scoreboard players add soupGiven MenuFeed 1
  execute if score maryGiveSoup MenuFeed matches 1 run scoreboard players add soupGiven MenuFeed 1
  execute if score tedGiveSoup MenuFeed matches 1 run scoreboard players add soupGiven MenuFeed 1
  execute if score timmyGiveSoup MenuFeed matches 1 run scoreboard players add soupGiven MenuFeed 1
  # Water
  execute if score doloresGiveWater MenuFeed matches 1 run scoreboard players add waterGiven MenuFeed 1
  execute if score maryGiveWater MenuFeed matches 1 run scoreboard players add waterGiven MenuFeed 1
  execute if score tedGiveWater MenuFeed matches 1 run scoreboard players add waterGiven MenuFeed 1
  execute if score timmyGiveWater MenuFeed matches 1 run scoreboard players add waterGiven MenuFeed 1
  # Medkit
  execute if score doloresGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1
  execute if score maryGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1
  execute if score tedGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1
  execute if score timmyGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1

# Set Status
  # # Soup, Water
  # execute if score soupGiven MenuFeed <= soups ItemsBunker if score waterGiven MenuFeed <= waters ItemsBunker run scoreboard players set itemStatus MenuFeed 0
  # # Soup, None
  # execute if score soupGiven MenuFeed <= soups ItemsBunker if score waterGiven MenuFeed >= waters ItemsBunker run scoreboard players set itemStatus MenuFeed 1
  # # None, Water
  # execute if score soupGiven MenuFeed >= soups ItemsBunker if score waterGiven MenuFeed <= waters ItemsBunker run scoreboard players set itemStatus MenuFeed 2
  # # None, None
  # execute if score soupGiven MenuFeed >= soups ItemsBunker if score waterGiven MenuFeed >= waters ItemsBunker run scoreboard players set itemStatus MenuFeed 3

# Count Remaining Food
  # Soup
  scoreboard players operation soupNotGiven MenuFeed = soups ItemsBunker
  scoreboard players operation soupNotGiven MenuFeed -= soupGiven MenuFeed
  # Water
  scoreboard players operation waterNotGiven MenuFeed = waters ItemsBunker
  scoreboard players operation waterNotGiven MenuFeed -= waterGiven MenuFeed