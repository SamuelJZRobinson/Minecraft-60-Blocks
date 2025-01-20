# Notes
  # Designed to deliver at most 4 items.

# Set Location Loot Preffered Items
execute if score mapVisited MenuExpedition matches 1 run function mc:states/9_expedition/place/items/item_loot/set_loot_neighbourhood
execute if score mapVisited MenuExpedition matches 2 run function mc:states/9_expedition/place/items/item_loot/set_loot_bank
execute if score mapVisited MenuExpedition matches 3 run function mc:states/9_expedition/place/items/item_loot/set_loot_supermarket
execute if score mapVisited MenuExpedition matches 4 run function mc:states/9_expedition/place/items/item_loot/set_loot_high_school
execute if score mapVisited MenuExpedition matches 5 run function mc:states/9_expedition/place/items/item_loot/set_loot_bowling_alley
execute if score mapVisited MenuExpedition matches 6 run function mc:states/9_expedition/place/items/item_loot/set_loot_hospital
execute if score mapVisited MenuExpedition matches 7 run function mc:states/9_expedition/place/items/item_loot/set_loot_metro
execute if score mapVisited MenuExpedition matches 8 run function mc:states/9_expedition/place/items/item_loot/set_loot_warehouse

# Backup All Items If 2 Preffered Items Are Unavailable
execute store result score randomItemCount ItemsBundles run data get storage minecraft:itemsprocess randomItemIds
execute if score randomItemCount ItemsBundles matches ..2 run function mc:states/9_expedition/place/items/item_loot/set_loot_all
# Backup Food If 2 All Items Are Unavailable
execute store result score randomItemCount ItemsBundles run data get storage minecraft:itemsprocess randomItemIds
execute if score randomItemCount ItemsBundles matches ..2 run data modify storage minecraft:itemsprocess randomItemIds append value 15
execute if score randomItemCount ItemsBundles matches ..2 run data modify storage minecraft:itemsprocess randomItemIds append value 17

# Get Random Items
execute if score itemsLeft ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/item_loot/append_loot