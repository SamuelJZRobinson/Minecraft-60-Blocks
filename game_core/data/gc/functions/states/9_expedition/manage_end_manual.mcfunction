# Append Character Head
  # Ted
  execute if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess charactersGainedIds append value 21
  # Dolores
  execute if score characterSent MenuExpedition matches 2 run data modify storage minecraft:itemsprocess charactersGainedIds append value 19
  # Mary
  execute if score characterSent MenuExpedition matches 3 run data modify storage minecraft:itemsprocess charactersGainedIds append value 20
  # Timmy
  execute if score characterSent MenuExpedition matches 4 run data modify storage minecraft:itemsprocess charactersGainedIds append value 22

# Reset Scores
scoreboard players set characterSent MenuExpedition 0

# Proceed
scoreboard players set gameState GameStatus 8
schedule function gc:states/manage_states 1t replace