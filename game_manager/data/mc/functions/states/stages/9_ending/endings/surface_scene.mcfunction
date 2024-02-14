# Notes
  # Driven away endings are randomly chosen when nobody is inside the bunker

# Remove Blindness
scoreboard players set blindness GameStatus 3

# Set Title Times
title @a times 40 60 20

# Teleport House Ruins
function mc:events/endings/tp_house_ruins

# Perished Endings
  # Titles
  execute if score ending GameStatus matches 1 run title @a title {"text":"YOU PERISHED.","color":"white"}
  # 1 - Family Perished

# Partial Win Endings
  # Titles
  execute if score ending GameStatus matches 2..5 run title @a title {"text":"YOU SURVIVED... MAYBE.","color":"white"}
  # 2 - Feline Domination
  # 3 - Cat Lady
  # 4 - Secret Agent Rescue
  # 5 - Rocket Ship

# Win Endings
  # Titles
  execute if score ending GameStatus matches 6 run title @a title {"text":"SAFE. FOR NOW.","color":"white"}
  execute if score ending GameStatus matches 7..9 run title @a title {"text":"YOU SURVIVED.","color":"white"}
  # 6 - Scavenge Successful
  # 7 - Military Rescue
    # Spawn military
  # 8 - Twin Siblings Rescue
    # Spawn siblings
  # 9 - Tank Escape
    # Spawn tank
  # 10 - Ice-cream Truck Escape
    # Spawn Ice-cream Truck

# Driven Away Endings
  # Titles
  execute if score ending GameStatus matches 10..15 run title @a title {"text":"YOU WERE DRIVEN AWAY.","color":"white"}
  # 11 - Family Invasion
  # 12 - Priest Invasion
  # 13 - Bandit Invasion
  # 14 - Military Invasion
  # 15 - Contraption Invasion
  # 16 - Marlon Invasion

  # Show Game Statistics
  execute unless score gameMode Lobby matches 3 run function mc:events/endings/check_highscore
  execute unless score gameMode Lobby matches 3 run tellraw @p[team=Playing] {"text":"Game Statistics (Hover)","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Days Survived: ","color":"dark_aqua"},{"score":{"name":"day","objective":"GameStatus"},"color":"aqua"},"\n","Successful Expeditions: ",{"score":{"name":"successfulExpeditions","objective":"GameStatus"},"color":"aqua"},"\n","Expedition Loot: ",{"score":{"name":"expeditionLoot","objective":"GameStatus"},"color":"aqua"},"\n","Water Consumed: ",{"score":{"name":"waterConsumed","objective":"GameStatus"},"color":"aqua"},"\n","Soup Consumed: ",{"score":{"name":"soupConsumed","objective":"GameStatus"},"color":"aqua"},"\n","No Decisions: ",{"score":{"name":"noDecisions","objective":"GameStatus"},"color":"aqua"},"\n","Yes Decisions: ",{"score":{"name":"yesDecisions","objective":"GameStatus"},"color":"aqua"},"\n","Shelter Defences: ",{"score":{"name":"shelterDefences","objective":"GameStatus"},"color":"aqua"}]}}

  # Refresh Game
  schedule function mc:quit/manage_refresh 5s