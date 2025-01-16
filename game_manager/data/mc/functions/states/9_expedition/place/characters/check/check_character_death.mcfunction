# Append Bundles
  # Dolores
  execute if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append value 19
  # Mary
  execute if score characterSent MenuExpedition matches 2..3 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append value 20
  # Ted
  execute if score characterSent MenuExpedition matches 4 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append value 21
  # Timmy
  execute if score characterSent MenuExpedition matches 5 run data modify storage minecraft:itemsprocess scavengeGainedItemIds append value 22

# Set Score
scoreboard players set characterSent MenuExpedition 0

# Set Bundle
scoreboard players set stage ItemsBundles 5
function mc:states/8_bunker/items/process/bundles/check/check_main_remove