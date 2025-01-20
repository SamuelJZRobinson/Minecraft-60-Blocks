# Notes
  # Send items directly to the loot bundle.

# Get Random Food
execute store result score output Math run random value 1..2
# Soup
execute if score output Math matches 1 run data modify storage minecraft:itemsprocess expeditionGainedItemIds append value 15
# Water
execute if score output Math matches 2 run data modify storage minecraft:itemsprocess expeditionGainedItemIds append value 17

# Decrement Loop
scoreboard players remove foodLeft ItemsExpedition 1

# Loop
execute if score foodLeft ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/food_loot/append_loot
execute if score foodLeft ItemsExpedition matches 0 run data remove storage minecraft:itemsprocess randomItemIds