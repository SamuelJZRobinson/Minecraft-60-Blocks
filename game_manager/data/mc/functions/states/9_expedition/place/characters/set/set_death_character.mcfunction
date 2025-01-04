# Append Bundles
  # Dolores
  execute if score characterSent MenuExplore matches 1 run data modify storage minecraft:scavenge savedItemIds append value 19
  # Mary
  execute if score characterSent MenuExplore matches 2..3 run data modify storage minecraft:scavenge savedItemIds append value 20
  # Ted
  execute if score characterSent MenuExplore matches 4 run data modify storage minecraft:scavenge savedItemIds append value 21
  # Timmy
  execute if score characterSent MenuExplore matches 5 run data modify storage minecraft:scavenge savedItemIds append value 22

# Set Score
scoreboard players set characterSent MenuExplore 0

# Set Bundle
scoreboard players set stage scavenges 5
function mc:utility/scavenge/process/bundles/check/check_main_remove