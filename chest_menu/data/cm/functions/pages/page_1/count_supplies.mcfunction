# Refresh Scores
scoreboard players set cansGiven MenuFeed 0
scoreboard players set bottlesGiven MenuFeed 0
scoreboard players set medkitGiven MenuFeed 0

# Soup
execute if score doloresGiveCan MenuFeed matches 1 run scoreboard players add cansGiven MenuFeed 1
execute if score maryGiveCan MenuFeed matches 1 run scoreboard players add cansGiven MenuFeed 1
execute if score tedGiveCan MenuFeed matches 1 run scoreboard players add cansGiven MenuFeed 1
execute if score timmyGiveCan MenuFeed matches 1 run scoreboard players add cansGiven MenuFeed 1

# Water
execute if score doloresGiveBottle MenuFeed matches 1 run scoreboard players add bottlesGiven MenuFeed 1
execute if score maryGiveBottle MenuFeed matches 1 run scoreboard players add bottlesGiven MenuFeed 1
execute if score tedGiveBottle MenuFeed matches 1 run scoreboard players add bottlesGiven MenuFeed 1
execute if score timmyGiveBottle MenuFeed matches 1 run scoreboard players add bottlesGiven MenuFeed 1

# Medkit
execute if score doloresGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1
execute if score maryGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1
execute if score tedGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1
execute if score timmyGiveMedkit MenuFeed matches 1 run scoreboard players add medkitGiven MenuFeed 1

# Set Status
  # Soup, Water
  execute if score cansGiven MenuFeed <= cans ItemsBunker if score bottlesGiven MenuFeed <= bottles ItemsBunker run scoreboard players set itemStatus MenuFeed 0
  # Soup, None
  execute if score cansGiven MenuFeed <= cans ItemsBunker if score bottlesGiven MenuFeed >= bottles ItemsBunker run scoreboard players set itemStatus MenuFeed 1
  # None, Water
  execute if score cansGiven MenuFeed >= cans ItemsBunker if score bottlesGiven MenuFeed <= bottles ItemsBunker run scoreboard players set itemStatus MenuFeed 2
  # None, None
  execute if score cansGiven MenuFeed >= cans ItemsBunker if score bottlesGiven MenuFeed >= bottles ItemsBunker run scoreboard players set itemStatus MenuFeed 3