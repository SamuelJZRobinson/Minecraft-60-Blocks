# Append Bundles
  # Ted
  execute if score characterSent MenuExpedition matches 1 run scoreboard players set alive TedStatus 0
  execute if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess charactersLostIds append value 21
  # Dolores
  execute if score characterSent MenuExpedition matches 2 run scoreboard players set alive DoloresStatus 0
  execute if score characterSent MenuExpedition matches 2 run data modify storage minecraft:itemsprocess charactersLostIds append value 19
  # Mary
  execute if score characterSent MenuExpedition matches 3 run scoreboard players set alive MaryStatus 0
  execute if score characterSent MenuExpedition matches 3 run data modify storage minecraft:itemsprocess charactersLostIds append value 20
  # Timmy
  execute if score characterSent MenuExpedition matches 4 run scoreboard players set alive TimmyStatus 0
  execute if score characterSent MenuExpedition matches 4 run data modify storage minecraft:itemsprocess charactersLostIds append value 22

# Reset Scores
scoreboard players set characterSent MenuExpedition 0