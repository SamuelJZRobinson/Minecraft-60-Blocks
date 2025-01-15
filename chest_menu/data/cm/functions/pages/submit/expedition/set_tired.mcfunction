# Set Tired
  # Dolores
  execute if score characterSent MenuExpedition matches 1 run scoreboard players operation isTired DoloresStatus = expeditionDuration MenuExpedition
  # Mary
  execute if score characterSent MenuExpedition matches 2 run scoreboard players operation isTired MaryStatus = expeditionDuration MenuExpedition
  # Ted
  execute if score characterSent MenuExpedition matches 4 run scoreboard players operation isTired TedStatus = expeditionDuration MenuExpedition
  # Timmy
  execute if score characterSent MenuExpedition matches 5 run scoreboard players operation isTired TimmyStatus = expeditionDuration MenuExpedition