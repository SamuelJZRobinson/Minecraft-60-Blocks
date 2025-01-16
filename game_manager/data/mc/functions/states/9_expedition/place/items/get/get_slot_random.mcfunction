# Increment Score
scoreboard players add loadItem ItemsExpedition 1

# Load Slots
  # One
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 1.. run data modify storage minecraft:itemsprocess randomItemIds set from storage minecraft:itemsprocess slotOneFree
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 1.. run scoreboard players operation suitcaseItemsLeft ItemsBundles = slotOneCount ItemsExpedition
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1
  execute if score loadItem ItemsExpedition matches 1 if score slotOneCount ItemsExpedition matches 1.. run scoreboard players set slotOneCount ItemsExpedition 0
  # Two
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 1.. run data modify storage minecraft:itemsprocess randomItemIds set from storage minecraft:itemsprocess slotTwoFree
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 1.. run scoreboard players operation suitcaseItemsLeft ItemsBundles = slotTwoCount ItemsExpedition
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1
  execute if score loadItem ItemsExpedition matches 2 if score slotTwoCount ItemsExpedition matches 1.. run scoreboard players set slotTwoCount ItemsExpedition 0
  # Three
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 1.. run data modify storage minecraft:itemsprocess randomItemIds set from storage minecraft:itemsprocess slotThreeFree
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 1.. run scoreboard players operation suitcaseItemsLeft ItemsBundles = slotThreeCount ItemsExpedition
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 0 run scoreboard players add loadItem ItemsExpedition 1
  execute if score loadItem ItemsExpedition matches 3 if score slotThreeCount ItemsExpedition matches 1.. run scoreboard players set slotThreeCount ItemsExpedition 0

# Call Root
execute if score loadItem ItemsExpedition matches 4 run scoreboard players add step ItemsExpedition 1
execute if score loadItem ItemsExpedition matches 4 run schedule function mc:states/9_expedition/place/manage_expedition 1t replace

# Loop
execute if score loadItem ItemsExpedition matches 1..3 if score suitcaseItemsLeft ItemsBundles matches 1.. run function mc:states/8_bunker/items/process/bundles/check/check_random