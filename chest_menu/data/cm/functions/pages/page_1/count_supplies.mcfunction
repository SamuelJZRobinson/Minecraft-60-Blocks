# Refresh Scores
scoreboard players set cansGiven ChestMenuFeed 0
scoreboard players set bottlesGiven ChestMenuFeed 0
scoreboard players set medkitGiven ChestMenuFeed 0

# Soup
execute if score doloresGiveCan ChestMenuFeed matches 1 run scoreboard players add cansGiven ChestMenuFeed 1
execute if score maryGiveCan ChestMenuFeed matches 1 run scoreboard players add cansGiven ChestMenuFeed 1
execute if score tedGiveCan ChestMenuFeed matches 1 run scoreboard players add cansGiven ChestMenuFeed 1
execute if score timmyGiveCan ChestMenuFeed matches 1 run scoreboard players add cansGiven ChestMenuFeed 1

# Water
execute if score doloresGiveBottle ChestMenuFeed matches 1 run scoreboard players add bottlesGiven ChestMenuFeed 1
execute if score maryGiveBottle ChestMenuFeed matches 1 run scoreboard players add bottlesGiven ChestMenuFeed 1
execute if score tedGiveBottle ChestMenuFeed matches 1 run scoreboard players add bottlesGiven ChestMenuFeed 1
execute if score timmyGiveBottle ChestMenuFeed matches 1 run scoreboard players add bottlesGiven ChestMenuFeed 1

# Medkit
execute if score doloresGiveMedkit ChestMenuFeed matches 1 run scoreboard players add medkitGiven ChestMenuFeed 1
execute if score maryGiveMedkit ChestMenuFeed matches 1 run scoreboard players add medkitGiven ChestMenuFeed 1
execute if score tedGiveMedkit ChestMenuFeed matches 1 run scoreboard players add medkitGiven ChestMenuFeed 1
execute if score timmyGiveMedkit ChestMenuFeed matches 1 run scoreboard players add medkitGiven ChestMenuFeed 1

# Set Status
  # Soup, Water
  execute if score cansGiven ChestMenuFeed <= cans ItemsBunker if score bottlesGiven ChestMenuFeed <= bottles ItemsBunker run scoreboard players set itemStatus ChestMenuFeed 0
  # Soup, None
  execute if score cansGiven ChestMenuFeed <= cans ItemsBunker if score bottlesGiven ChestMenuFeed >= bottles ItemsBunker run scoreboard players set itemStatus ChestMenuFeed 1
  # None, Water
  execute if score cansGiven ChestMenuFeed >= cans ItemsBunker if score bottlesGiven ChestMenuFeed <= bottles ItemsBunker run scoreboard players set itemStatus ChestMenuFeed 2
  # None, None
  execute if score cansGiven ChestMenuFeed >= cans ItemsBunker if score bottlesGiven ChestMenuFeed >= bottles ItemsBunker run scoreboard players set itemStatus ChestMenuFeed 3