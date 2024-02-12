# Increment Score
scoreboard players add loadItem ItemsExpedition 1

# Load Slots
  # One
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 1.. run data modify storage minecraft:checkitem randomId set from storage minecraft:checkitem slotOneFree
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 1.. run scoreboard players operation itemsOwed CheckItems = slotOneCount ItemsExpedition
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 1.. run scoreboard players set slotOneCount ItemsExpedition 0
  # Two
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 1.. run data modify storage minecraft:checkitem randomId set from storage minecraft:checkitem slotTwoFree
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 1.. run scoreboard players operation itemsOwed CheckItems = slotTwoCount ItemsExpedition
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 1.. run scoreboard players set slotTwoCount ItemsExpedition 0
  # Three
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 1.. run data modify storage minecraft:checkitem randomId set from storage minecraft:checkitem slotThreeFree
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 1.. run scoreboard players operation itemsOwed CheckItems = slotThreeCount ItemsExpedition
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 1.. run scoreboard players set slotThreeCount ItemsExpedition 0

# Call Root
execute if score loadItem ItemsExpedition matches 4 run scoreboard players add stage ItemsExpedition 1
execute if score loadItem ItemsExpedition matches 4 run function mc:events/random_loadout/locations/items/manage_items

# Loop
execute if score loadItem ItemsExpedition matches 1..3 if score itemsOwed CheckItems matches 1.. run function mc:status/scavenge/check_item/check_random