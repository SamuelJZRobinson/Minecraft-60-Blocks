# Notes
  # Driven away endings are randomly chosen when nobody is inside the bunker.

# Goto House Ruins
function gc:utility/tp/tp_house_ruins

# Set Title Times
title @a times 20 80 20

# Perished Endings
  # Title
  execute if score ending GameStatus matches 1 run title @a title {"text":"YOU PERISHED.","color":"white"}
  # 1 - Family Perished

# Partial Win Endings
  # Title
  execute if score ending GameStatus matches 2..5 run title @a title {"text":"YOU SURVIVED... MAYBE.","color":"white"}
  # 2 - Feline Domination
  # 3 - Cat Lady
  # 4 - Secret Agent Rescue
  # 5 - Rocket Ship

# Win Endings
  # Title
  execute if score ending GameStatus matches 6 run title @a title {"text":"SAFE. FOR NOW.","color":"white"}
  execute if score ending GameStatus matches 7..10 run title @a title {"text":"YOU SURVIVED.","color":"white"}
  # 6 - Scavenge Successful
  # 7 - Military Rescue
  # 8 - Twin Siblings Rescue
  # 9 - Tank Escape
  # 10 - Ice-cream Truck Escape

# Driven Away Endings
  # Title
  execute if score ending GameStatus matches 11..16 run title @a title {"text":"YOU WERE DRIVEN AWAY.","color":"white"}
  # 11 - Family Invasion
  # 12 - Priest Invasion
  # 13 - Bandit Invasion
  # 14 - Military Invasion
  # 15 - Contraption Invasion
  # 16 - Marlon Invasion

# Show Game Statistics
schedule function gc:states/10_gameover/show/show_statistics 2s replace

# Set State
scoreboard players set gameState GameStatus 1
schedule function gc:states/manage_states 7s replace