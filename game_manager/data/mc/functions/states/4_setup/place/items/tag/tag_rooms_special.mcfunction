# Note
  # Ensure room has sufficient item space otherwise increment room group to offer special item elsewhere.

# Room Groups
  # Group 1
  execute if score room ItemsHouse matches 1 if score giveItem ItemsHouse matches 1..3 if score hallwayItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
  execute if score room ItemsHouse matches 1 if score giveItem ItemsHouse matches 4..5 if score bathroomItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
  # Group 2
  execute if score room ItemsHouse matches 2 if score kitchenItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
  # Group 3
  execute if score room ItemsHouse matches 3 if score loungeItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
  # Group 4
  execute if score room ItemsHouse matches 4 if score giveItem ItemsHouse matches 1..3 if score masterBedroomItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
  execute if score room ItemsHouse matches 4 if score giveItem ItemsHouse matches 4..5 if score sideBathroomItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1